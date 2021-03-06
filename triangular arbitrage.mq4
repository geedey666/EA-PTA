#property copyright "Copyright 2018, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
double orderLots  = 1;
int    orderMagic = 364;
double lim = 0;
double v0 = 0;
double slPrice = 0;

string symbol1 = "EURUSD";
string symbol2 = "USDJPY";
string symbol3 = "EURJPY";
double signalFlag = 0;

input string symbolTail = ".G";

bool alertFlag = true;

void OnTimer()
  {  
      double EU = iMA(symbol1,Period(),4,0,MODE_SMMA,PRICE_CLOSE,0);
      double JP = iMA(symbol2,Period(),4,0,MODE_SMMA,PRICE_CLOSE,0);
      double EJ = iMA(symbol3,Period(),4,0,MODE_SMMA,PRICE_CLOSE,0);
      double v2Point = SymbolInfoDouble(symbol2,SYMBOL_POINT);
      if(v2Point == 0){
         if(alertFlag){
            Alert("币种名错误，请设置币种名后缀！");
            alertFlag = false;
         }
         alertFlag = false;
         return ;
      }
      double value = (EJ - EU * JP)/v2Point;

      if(      value >= 2){
         signalFlag = -1;         
      }else if(value <= -2){
         signalFlag = 1;
      }else signalFlag = 0;
               
      orderMagic = 364;
      if(signalFlag == -1)
      {
         if(orderCnt(orderMagic,symbol1) == 0)makeOneOrderAsType(symbol1,OP_SELL,orderLots,symbol1,orderMagic);
         if(orderCnt(orderMagic,symbol2) == 0)makeOneOrderAsType(symbol2,OP_BUY, orderLots,symbol1,orderMagic);
         if(orderCnt(orderMagic,symbol3) == 0)makeOneOrderAsType(symbol3,OP_BUY, orderLots,symbol1,orderMagic);
      }
      if(profitTotal(symbol1,orderMagic) > 2.4 * orderLots * 100)
      {
         closeOrders(symbol1,orderMagic);
      }
      orderMagic += 1;
      if(signalFlag ==  1)
      {
         if(orderCnt(orderMagic,symbol1) == 0)makeOneOrderAsType(symbol1,OP_BUY, orderLots,symbol1,orderMagic);
         if(orderCnt(orderMagic,symbol2) == 0)makeOneOrderAsType(symbol2,OP_SELL,orderLots,symbol1,orderMagic);
         if(orderCnt(orderMagic,symbol3) == 0)makeOneOrderAsType(symbol3,OP_SELL,orderLots,symbol1,orderMagic);
      }
      if(profitTotal(symbol1,orderMagic) > 2.4 * orderLots * 100)
      {
         closeOrders(symbol1,orderMagic);
      }            
      string commentStr = DoubleToString(value,5) +"\n";                   
      Comment(commentStr);
  }  
double profitTotal(string comment,int magic)
{  
   double profit = 0;
   for(int i = OrdersTotal() - 1; i >= 0; i--)
   {
      if(OrderSelect(i, SELECT_BY_POS) == false)continue;
      if(OrderComment() != comment) continue;
      if(OrderMagicNumber() != magic) continue;
      profit += OrderProfit() + OrderSwap() + OrderCommission();      
   }
   return profit;
}
void closeOrders(string comment,int magic)
{     
   for(int i = OrdersTotal() - 1; i >= 0; i--)
   {
      if(OrderSelect(i, SELECT_BY_POS) == false)continue;
      if(OrderComment() != comment) continue;
      if(OrderMagicNumber() != magic) continue;
      int ret = OrderClose(OrderTicket(),OrderLots(),OrderClosePrice(),5000,clrYellow);
   }   
}  
bool checkLongKLine(int kCnt, int pips, int magic)
{  
   int hours = TimeHour(TimeCurrent());
   if(hours >= 21 || hours <= 1) 
   {
      for(int i = OrdersTotal() - 1; i >= 0; i--)
         if(OrderSelect(i, SELECT_BY_POS))
         if(OrderSymbol() == Symbol())
         if(OrderMagicNumber() == magic)
            int ret = OrderClose(OrderTicket(),OrderLots(),OrderClosePrice(),5000,clrYellow);               
      return true;
   }
   for(int i = 0; i < kCnt; i++)
   {
      if(MathAbs(High[i]   - Low[i]) > pips * Point) return true;
      if(MathAbs(Low[i+1] - High[i]) > pips * 1.3 * Point) return true;
      if(MathAbs(Low[i] - High[i+1]) > pips * 1.3 * Point) return true;
   }
   return false;
}  
void orderProfitPipsClose(int magic, int profitPipsTarget, int sl)
{   
   for(int i = OrdersTotal() - 1; i >= 0; i--)
   {
      if(OrderSelect(i, SELECT_BY_POS) == false)continue;
      if(OrderSymbol() != Symbol()) continue;
      if(OrderMagicNumber() != magic) continue;
      //double profitPips = (OrderProfit() + OrderSwap() + OrderCommission())/OrderLots();
      double profitPips = (OrderProfit())/OrderLots();
            
      //if(profitPips >= profitPipsTarget)
      //   int ret = OrderClose(OrderTicket(),OrderLots(),OrderClosePrice(),5000,clrYellow);                     
         
      double slPips = 20 * Point;
      if(slPrice == 0)
      {
         if(OrderType() == OP_BUY)  slPrice = OrderOpenPrice() - slPips;
         if(OrderType() == OP_SELL) slPrice = OrderOpenPrice() + slPips;
      }else{
         if(OrderType() == OP_BUY)
            if(Bid - slPips > slPrice) slPrice = Bid - slPips;
         if(OrderType() == OP_SELL)
            if(Ask + slPips < slPrice) slPrice = Ask + slPips;       
      }
      if(OrderType() == OP_BUY)
         if(Bid < slPrice)
            int ret = OrderClose(OrderTicket(),OrderLots(),OrderClosePrice(),5000,clrYellow);
      if(OrderType() == OP_SELL)
         if(Ask > slPrice)
            int ret = OrderClose(OrderTicket(),OrderLots(),OrderClosePrice(),5000,clrYellow);            
      
      if(slPrice > 0)
      {
         ObjectDelete(0,"slLine");
         ObjectCreate(0,"slLine",OBJ_HLINE,0,Time[0],slPrice);
      }else{
         ObjectDelete(0,"slLine");
      }   
      //if(profitPips <= sl * -1)
      //   int ret = OrderClose(OrderTicket(),OrderLots(),OrderClosePrice(),5000,clrYellow);
      //if(TimeCurrent() - OrderOpenTime() > 60 * 2)
      //{//如果持仓时间大于三分钟，信号反向就平
      //   if(OrderType() == OP_BUY)
      //   {
      //      if(v0 > lim * 0.7) int ret = OrderClose(OrderTicket(),OrderLots(),OrderClosePrice(),5000,clrYellow);
      //   }else if(OrderType() == OP_SELL){
      //      if(v0 < lim * -0.7)int ret = OrderClose(OrderTicket(),OrderLots(),OrderClosePrice(),5000,clrYellow);
      //   }            
      //}
   }                  
}      
int orderCnt(int magic, string symbol)
{
   int totalCnt = 0;
   for(int i = OrdersTotal() - 1; i >= 0; i--)
   {
      if(OrderSelect(i, SELECT_BY_POS) == false)continue;
      if(OrderSymbol() != symbol) continue;
      if(OrderMagicNumber() != magic) continue;
      totalCnt++;
   }               
   return totalCnt;
}  
void makeOneOrderAsType(string symbol, int type, double lots, string comment, int magic)
{//开仓
   double sl = 0;
   double tp = 0; 
   color col = clrRed;
   if(type == OP_BUY)col = clrBlue;
   double bid = SymbolInfoDouble(symbol,SYMBOL_BID);
   double ask = SymbolInfoDouble(symbol,SYMBOL_ASK);
   if(type == OP_BUY)      int ret = OrderSend(symbol, type, lots, ask, 5000, sl, tp, comment, magic,0,col);
   else if(type == OP_SELL)int ret = OrderSend(symbol, type, lots, bid, 5000, sl, tp, comment, magic,0,col);            
   Sleep(500); 
}  
int OnInit()
  {
   symbol1 += symbolTail;
   symbol2 += symbolTail;
   symbol3 += symbolTail;
//   lim = iCustom(Symbol(),Period(),indicatorsName,1,0);
   EventSetMillisecondTimer(100);
   return(INIT_SUCCEEDED);
  }
void OnDeinit(const int reason)
  {   EventKillTimer();  }
void OnTick()
  {  }