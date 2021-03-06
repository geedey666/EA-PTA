//EA交易     =>  ...\MT4\MQL4\Experts

#property  copyright "如果您在使用EA的过程中遇到问题，欢迎您联系 QQ 3199562272。"

//enum ENUM_TIMEFRAMES      {PERIOD_CURRENT = 0, PERIOD_M1 = 1, PERIOD_M2 = 2, PERIOD_M3 = 3, PERIOD_M4 = 4, PERIOD_M5 = 5, PERIOD_M6 = 6, PERIOD_M10 = 10, PERIOD_M12 = 12, PERIOD_M15 = 15, PERIOD_M20 = 20, PERIOD_M30 = 30, PERIOD_H1 = 60, PERIOD_H2 = 120, PERIOD_H3 = 180, PERIOD_H4 = 240, PERIOD_H6 = 360, PERIOD_H8 = 480, PERIOD_H12 = 720, PERIOD_D1 = 1440, PERIOD_W1 = 10080, PERIOD_MN1 = 43200, };
//enum ENUM_LINE_STYLE      {STYLE_SOLID = 0, STYLE_DASH = 1, STYLE_DOT = 2, STYLE_DASHDOT = 3, STYLE_DASHDOTDOT = 4, };
//enum ENUM_BASE_CORNER      {CORNER_LEFT_UPPER = 0, CORNER_RIGHT_UPPER = 1, CORNER_LEFT_LOWER = 2, CORNER_RIGHT_LOWER = 3, };
//enum ENUM_BORDER_TYPE      {BORDER_FLAT = 0, BORDER_RAISED = 1, BORDER_SUNKEN = 2, };

 enum lotseting {
      FixLot = 0,//固定初始手数
      Highrisk = 3,//自动初始手数
          };
 enum mode {
      DurableMode = 0,//稳健交易模式
      TurboMode = 1,//激进交易模式
          };
 enum fkong {
      fkui1 = 0,//当账户浮亏达到10%时，全部货币对的单子平仓，EA重启。
      fkui2 = 1,//当账户浮亏达到20%时，全部货币对的单子平仓，EA重启。
      fkui3 = 2,//当账户浮亏达到30%时，全部货币对的单子平仓，EA重启。
      fkui4 = 3,//当账户浮亏达到40%时，全部货币对的单子平仓，EA重启。
      fkui5 = 4,//当账户浮亏达到50%时，全部货币对的单子平仓，EA重启。
      fkui6 = 5,//当账户浮亏达到60%时，全部货币对的单子平仓，EA重启。
      fkui7 = 6,//当账户浮亏达到70%时，全部货币对的单子平仓，EA重启。
      fkui8 = 7,//当账户浮亏达到80%时，全部货币对的单子平仓，EA重启。
      fkui9 = 8,//当账户浮亏达到90%时，全部货币对的单子平仓，EA重启。
      ping2 = 9,//当个别货币对加仓达到2层后，该货币对的单子全部平仓。
      ping3 = 10,//当个别货币对加仓达到3层后，该货币对的单子全部平仓。
      ping4 = 11,//当个别货币对加仓达到4层后，该货币对的单子全部平仓。
      ping5 = 12,//当个别货币对加仓达到5层后，该货币对的单子全部平仓。
      ping6 = 13,//当个别货币对加仓达到6层后，该货币对的单子全部平仓。
      ping7 = 14,//当个别货币对加仓达到7层后，该货币对的单子全部平仓。
      ping8 = 15,//当个别货币对加仓达到8层后，该货币对的单子全部平仓。
      ping9 = 16,//当个别货币对加仓达到9层后，该货币对的单子全部平仓。
      ping10 = 17,//当个别货币对加仓达到10层后，该货币对的单子全部平仓。
      ping11 = 18,//当个别货币对加仓达到11层后，该货币对的单子全部平仓。
      ping12 = 19,//当个别货币对加仓达到12层后，该货币对的单子全部平仓。
      ping13 = 20,//当个别货币对加仓达到13层后，该货币对的单子全部平仓。
      ping14 = 21,//当个别货币对加仓达到14层后，该货币对的单子全部平仓。
      ping15 = 22,//当个别货币对加仓达到15层后，该货币对的单子全部平仓。
      stopjia2 = 23,//当个别货币对加仓达到2层后，不再加仓，等待回调获利了结。
      stopjia3 = 24,//当个别货币对加仓达到3层后，不再加仓，等待回调获利了结。
      stopjia4 = 25,//当个别货币对加仓达到4层后，不再加仓，等待回调获利了结。
      stopjia5 = 26,//当个别货币对加仓达到5层后，不再加仓，等待回调获利了结。
      stopjia6 = 27,//当个别货币对加仓达到6层后，不再加仓，等待回调获利了结。
      stopjia7 = 28,//当个别货币对加仓达到7层后，不再加仓，等待回调获利了结。
      stopjia8 = 29,//当个别货币对加仓达到8层后，不再加仓，等待回调获利了结。
      stopjia9 = 30,//当个别货币对加仓达到9层后，不再加仓，等待回调获利了结。
      stopjia10 = 31,//当个别货币对加仓达到10层后，不再加仓，等待回调获利了结。
      stopjia11 = 32,//当个别货币对加仓达到11层后，不再加仓，等待回调获利了结。
      stopjia12 = 33,//当个别货币对加仓达到12层后，不再加仓，等待回调获利了结。
      stopjia13 = 34,//当个别货币对加仓达到13层后，不再加仓，等待回调获利了结。
      stopjia14 = 35,//当个别货币对加仓达到14层后，不再加仓，等待回调获利了结。
      stopjia15 = 36,//当个别货币对加仓达到15层后，不再加仓，等待回调获利了结。
      xin1 = 37,//不设置任何的风险控制
          };
 enum fangshi {
      Shutdown_the_system = 0,//EA终止运行
      Restart_system_immediately = 1,//EA持续运行（默认）
      Restart_the_system_after_1_hour = 2,//系统将于止损发生后的1小时重启
      Restart_the_system_after_4_hour = 3,//系统将于止损发生后的4小时重启
      Restart_the_system_after_8_hour = 4,//系统将于止损发生后的8小时重启
      Restart_the_system_after_12_hour = 5,//系统将于止损发生后的12小时重启
      Restart_the_system_after_24_hour = 6,//系统将于止损发生后的24小时重启
          };
 enum trade {
      Trading_enabled = 0,//允许交易
      Trading_disabled_during_next_stage = 1,//单子获利并平仓后，暂停交易
      Trading_closed_immediately_and_disabled = 2,//即刻关闭所有单子，暂停交易
          };
extern string 温馨提示="我们建议您使用默认参数，即不更改任何的参数。"  ;  
extern string 交易模式参数设置="=============================="  ;  
extern double 固定初始开仓手数=0.01  ;   
extern  lotseting  初始开仓手数的选取=3  ;   
extern  mode  交易模式=0  ;   
extern string 风险警报参数设置="=============================="  ;  
extern double 报警风险数值=35  ;   
extern double 警报间隔时长=10  ;   
extern string 最大回撤风险设置="=============================="  ;  
extern  fkong  风险控制策略=37  ;   
extern  fangshi  止损发生后是否持续运行EA=6  ;   
extern string 货币对授权交易设置="=============================="  ;  
extern bool 金币的喧闹=true  ;   
extern  trade  货币对总控制器=0  ;   
extern  trade  GBPUSD=0  ;   
extern  trade  EURUSD=0  ;   
extern  trade  USDJPY=0  ;   
extern  trade  USDCAD=0  ;   
extern  trade  AUDUSD=0  ;   
extern  trade  EURGBP=0  ;   
extern  trade  EURCHF=0  ;   
extern  trade  EURJPY=0  ;   
extern  trade  CADJPY=0  ;   
extern  trade  AUDNZD=0  ;   
extern  trade  AUDCAD=0  ;   
extern  trade  AUDCHF=0  ;   
extern  trade  AUDJPY=0  ;   
extern  trade  CHFJPY=0  ;   
extern  trade  CADCHF=0  ;   
extern  trade  NZDJPY=0  ;   
extern  trade  NZDUSD=0  ;   
extern  trade  GBPNZD=0  ;   
extern  trade  NZDCAD=0  ;   
extern  trade  NZDCHF=0  ;   
extern  trade  GBPCAD=0  ;   
extern  trade  USDCHF=0  ;   
extern  trade  EURCAD=0  ;   
extern  trade  EURAUD=0  ;   
extern  trade  GBPCHF=0  ;   
extern  trade  EURNZD=0  ;   
extern  trade  GBPAUD=0  ;   
extern  trade  GBPJPY=0  ;   
extern int   magic=888  ;   

 bool      总_bo_1 = false;
 long      总_lo_2 = D'2017.12.01';
 string    总_st_3 = "GBPUSD";
 string    总_st_4 = "EURUSD";
 string    总_st_5 = "USDJPY";
 string    总_st_6 = "USDCAD";
 string    总_st_7 = "AUDUSD";
 string    总_st_8 = "EURGBP";
 string    总_st_9 = "EURCHF";
 string    总_st_10 = "EURJPY";
 string    总_st_11 = "CADJPY";
 string    总_st_12 = "AUDNZD";
 string    总_st_13 = "AUDCAD";
 string    总_st_14 = "AUDCHF";
 string    总_st_15 = "AUDJPY";
 string    总_st_16 = "CHFJPY";
 string    总_st_17 = "CADCHF";
 string    总_st_18 = "NZDJPY";
 string    总_st_19 = "NZDUSD";
 string    总_st_20 = "GBPNZD";
 string    总_st_21 = "NZDCAD";
 string    总_st_22 = "NZDCHF";
 string    总_st_23 = "GBPCAD";
 string    总_st_24 = "USDCHF";
 string    总_st_25 = "EURCAD";
 string    总_st_26 = "EURAUD";
 string    总_st_27 = "GBPCHF";
 string    总_st_28 = "EURNZD";
 string    总_st_29 = "GBPAUD";
 string    总_st_30 = "GBPJPY";
 string    总_st_31 = "Ghidorah Forex EA Version T";
 bool      总_bo_32 = false;
 int       总_in_33 = 5223;
 string    总_st_34 = "马来西亚外汇交易策略研究与教育中心 ";
 string    总_st_35 = "Malaysia Forex Trading Strategy Research and Education Centre";
 string    总_st_36 = "MyForexTrading@126.com";
 string    总_st_37 = "3199562272";
 string    总_st_38 = "";
 string    总_st_39 = "";
 string    总_st_40 = "";
 int       总_in_41 = 60;
 double    总_do_42 = 0.01;
 double    总_do_43 = 50000.0;
 double    总_do_44 = 20000.0;
 double    总_do_45 = 10000.0;
 double    总_do_46 = 1000.0;
 double    总_do_47 = 250.0;
 bool      总_bo_48 = false;
 double    总_do_49 = 25.0;
 bool      总_bo_50 = true;
 double    总_do_51 = 30.0;
 double    总_do_52 = 0.0;
 double    总_do_53 = 3.88;
 double    总_do_54 = 0.0;
 int       总_in_55 = 1000;
 bool      总_bo_56 = true;
 double    总_do_57 = 2.0;
 double    总_do_58 = 0.1;
 bool      总_bo_59 = false;
 double    总_do_60 = 9000.0;
 double    总_do_61 = 9000.0;
 bool      总_bo_62 = true;
 bool      总_bo_63 = true;
 int       总_in_64 = 20;
 int       总_in_65 = 2;
 int       总_in_66 = 0;
 bool      总_bo_67 = true;
 int       总_in_68 = 5;
 int       总_in_69 = 3;
 int       总_in_70 = 3;
 int       总_in_71 = 0;
 int       总_in_72 = 0;
 int       总_in_73 = 30;
 int       总_in_74 = 70;
 bool      总_bo_75 = true;
 int       总_in_76 = 12;
 int       总_in_77 = 0;
 int       总_in_78 = 30;
 int       总_in_79 = 70;
 double    总_do_80 = 0.0;
 double    总_do_81 = 0.0;
 double    总_do_82 = 0.0;
 int       总_in_83 = 2;
 int       总_in_84 = 200;
 int       总_in_85 = 1000;
 int       总_in_86 = 600;
 int       总_in_87 = 600;
 int       总_in_88 = 400;
 int       总_in_89 = 10;
 int       总_in_90 = 30;
 int       总_in_91 = 20;
 int       总_in_92 = 280;
 string    总_st_93;
 string    总_st_94;
 string    总_st_95;
 string    总_st_96;
 string    总_st_97;
 string    总_st_98;
 string    总_st_99;
 string    总_st_100;
 string    总_st_101;
 string    总_st_102;
 string    总_st_103;
 string    总_st_104;
 string    总_st_105;
 string    总_st_106;
 string    总_st_107;
 string    总_st_108;
 string    总_st_109;
 string    总_st_110;
 string    总_st_111;
 string    总_st_112;
 string    总_st_113;
 string    总_st_114;
 string    总_st_115;
 string    总_st_116;
 bool      总_bo_117 = false;
 double    总_do_118 = 0.0;
 int       总_in_119 = 0;
 int       总_in_120 = 0;
 long      总_lo_121 = 0;
 double    总_do_122 = 0.0;
 long      总_lo_123 = 0;
 long      总_lo_124 = 0;
 long      总_lo_125 = 0;



//----------------------------

 int OnInit ()
 {
 int         子_in_1;
 string      子_st_2;
 string      子_st_3;

//----------------------------

 总_do_118 = 1000.0 ;
 总_in_119 = 100 ;
 总_in_120 = 100 ;
 if ( 风险控制策略 == 0 )
  {
  总_do_118 = 10.0 ;
  }
 if ( 风险控制策略 == 1 )
  {
  总_do_118 = 20.0 ;
  }
 if ( 风险控制策略 == 2 )
  {
  总_do_118 = 30.0 ;
  }
 if ( 风险控制策略 == 3 )
  {
  总_do_118 = 40.0 ;
  }
 if ( 风险控制策略 == 4 )
  {
  总_do_118 = 50.0 ;
  }
 if ( 风险控制策略 == 5 )
  {
  总_do_118 = 60.0 ;
  }
 if ( 风险控制策略 == 6 )
  {
  总_do_118 = 70.0 ;
  }
 if ( 风险控制策略 == 7 )
  {
  总_do_118 = 80.0 ;
  }
 if ( 风险控制策略 == 8 )
  {
  总_do_118 = 90.0 ;
  }
 if ( 风险控制策略 == 9 )
  {
  总_in_119 = 3 ;
  }
 if ( 风险控制策略 == 10 )
  {
  总_in_119 = 4 ;
  }
 if ( 风险控制策略 == 11 )
  {
  总_in_119 = 5 ;
  }
 if ( 风险控制策略 == 12 )
  {
  总_in_119 = 6 ;
  }
 if ( 风险控制策略 == 13 )
  {
  总_in_119 = 7 ;
  }
 if ( 风险控制策略 == 14 )
  {
  总_in_119 = 8 ;
  }
 if ( 风险控制策略 == 15 )
  {
  总_in_119 = 9 ;
  }
 if ( 风险控制策略 == 16 )
  {
  总_in_119 = 10 ;
  }
 if ( 风险控制策略 == 17 )
  {
  总_in_119 = 11 ;
  }
 if ( 风险控制策略 == 18 )
  {
  总_in_119 = 12 ;
  }
 if ( 风险控制策略 == 19 )
  {
  总_in_119 = 13 ;
  }
 if ( 风险控制策略 == 20 )
  {
  总_in_119 = 14 ;
  }
 if ( 风险控制策略 == 21 )
  {
  总_in_119 = 15 ;
  }
 if ( 风险控制策略 == 22 )
  {
  总_in_119 = 16 ;
  }
 if ( 风险控制策略 == 23 )
  {
  总_in_120 = 3 ;
  }
 if ( 风险控制策略 == 24 )
  {
  总_in_120 = 4 ;
  }
 if ( 风险控制策略 == 25 )
  {
  总_in_120 = 5 ;
  }
 if ( 风险控制策略 == 26 )
  {
  总_in_120 = 6 ;
  }
 if ( 风险控制策略 == 27 )
  {
  总_in_120 = 7 ;
  }
 if ( 风险控制策略 == 28 )
  {
  总_in_120 = 8 ;
  }
 if ( 风险控制策略 == 29 )
  {
  总_in_120 = 9 ;
  }
 if ( 风险控制策略 == 30 )
  {
  总_in_120 = 10 ;
  }
 if ( 风险控制策略 == 31 )
  {
  总_in_120 = 11 ;
  }
 if ( 风险控制策略 == 32 )
  {
  总_in_120 = 12 ;
  }
 if ( 风险控制策略 == 33 )
  {
  总_in_120 = 13 ;
  }
 if ( 风险控制策略 == 34 )
  {
  总_in_120 = 14 ;
  }
 if ( 风险控制策略 == 35 )
  {
  总_in_120 = 15 ;
  }
 if ( 风险控制策略 == 36 )
  {
  总_in_120 = 16 ;
  }
 子_in_1 = 0 ;
 子_st_2 = "" ;
 子_st_3 = Symbol() ;
 子_in_1=StringLen(Symbol()); 
 子_st_2 = StringSubstr(子_st_3,6,子_in_1 - 6) ;
 总_st_3 = "GBPUSD" ;
 总_st_4 = "EURUSD" ;
 总_st_5 = "USDJPY" ;
 总_st_6 = "USDCAD" ;
 总_st_7 = "AUDUSD" ;
 总_st_8 = "EURGBP" ;
 总_st_9 = "EURCHF" ;
 总_st_10 = "EURJPY" ;
 总_st_11 = "CADJPY" ;
 总_st_12 = "AUDNZD" ;
 总_st_13 = "AUDCAD" ;
 总_st_14 = "AUDCHF" ;
 总_st_15 = "AUDJPY" ;
 总_st_16 = "CHFJPY" ;
 总_st_17 = "CADCHF" ;
 总_st_18 = "NZDJPY" ;
 总_st_19 = "NZDUSD" ;
 总_st_20 = "GBPNZD" ;
 总_st_21 = "NZDCAD" ;
 总_st_22 = "NZDCHF" ;
 总_st_23 = "GBPCAD" ;
 总_st_24 = "USDCHF" ;
 总_st_25 = "EURCAD" ;
 总_st_26 = "EURAUD" ;
 总_st_27 = "GBPCHF" ;
 总_st_28 = "EURNZD" ;
 总_st_29 = "GBPAUD" ;
 总_st_30 = "GBPJPY" ;
 总_st_3="GBPUSD" + 子_st_2;
 总_st_4="EURUSD" + 子_st_2;
 总_st_5="USDJPY" + 子_st_2;
 总_st_6="USDCAD" + 子_st_2;
 总_st_7="AUDUSD" + 子_st_2;
 总_st_8="EURGBP" + 子_st_2;
 总_st_9="EURCHF" + 子_st_2;
 总_st_10="EURJPY" + 子_st_2;
 总_st_11="CADJPY" + 子_st_2;
 总_st_12="AUDNZD" + 子_st_2;
 总_st_13="AUDCAD" + 子_st_2;
 总_st_14="AUDCHF" + 子_st_2;
 总_st_15="AUDJPY" + 子_st_2;
 总_st_16="CHFJPY" + 子_st_2;
 总_st_17="CADCHF" + 子_st_2;
 总_st_18="NZDJPY" + 子_st_2;
 总_st_19="NZDUSD" + 子_st_2;
 总_st_20="GBPNZD" + 子_st_2;
 总_st_21="NZDCAD" + 子_st_2;
 总_st_22="NZDCHF" + 子_st_2;
 总_st_23="GBPCAD" + 子_st_2;
 总_st_24="USDCHF" + 子_st_2;
 总_st_25="EURCAD" + 子_st_2;
 总_st_26="EURAUD" + 子_st_2;
 总_st_27="GBPCHF" + 子_st_2;
 总_st_28="EURNZD" + 子_st_2;
 总_st_29="GBPAUD" + 子_st_2;
 总_st_30="GBPJPY" + 子_st_2;
 ChartSetInteger(ChartID(),36,0); 
 ChartSetInteger(ChartID(),37,0); 
 ChartSetInteger(ChartID(),1,0,0); 
 ChartSetInteger(ChartID(),12,0); 
 if ( IsDemo() )
  {
  总_st_93 = "Demo account mode" ;
  }
 else
  {
  总_st_93 = "Real account mode" ;
  }
 ObjectCreate(0,"1",OBJ_RECTANGLE_LABEL,0,0,0.0); 
 ObjectSetInteger(0,"1",OBJPROP_BACK,0); 
 ObjectSetInteger(0,"1",OBJPROP_SELECTABLE,0); 
 ObjectSetInteger(0,"1",OBJPROP_SELECTED,0); 
 ObjectSetInteger(0,"1",OBJPROP_HIDDEN,1); 
 ObjectSetInteger(0,"1",OBJPROP_ZORDER,0); 
 ObjectSetInteger(0,"1",OBJPROP_XSIZE,15000); 
 ObjectSetInteger(0,"1",OBJPROP_YSIZE,1500); 
 ObjectSetInteger(0,"1",OBJPROP_BGCOLOR,36095); 
 ObjectSetInteger(0,"1",OBJPROP_BORDER_TYPE,0); 
 ObjectSetInteger(0,"1",OBJPROP_CORNER,0); 
 ObjectSetInteger(0,"1",OBJPROP_COLOR,4294967295); 
 ObjectSetInteger(0,"1",OBJPROP_STYLE,0); 
 ObjectSetInteger(0,"1",OBJPROP_WIDTH,1); 
 ObjectSetInteger(0,"1",OBJPROP_XDISTANCE,-10); 
 ObjectSetInteger(0,"1",OBJPROP_YDISTANCE,-10); 
 ObjectSetInteger(0,"1",OBJPROP_XSIZE,15000); 
 ObjectSetInteger(0,"1",OBJPROP_YSIZE,1500); 
 ObjectCreate(0,"2",OBJ_RECTANGLE_LABEL,0,0,0.0); 
 ObjectSetInteger(0,"2",OBJPROP_BACK,0); 
 ObjectSetInteger(0,"2",OBJPROP_SELECTABLE,0); 
 ObjectSetInteger(0,"2",OBJPROP_SELECTED,0); 
 ObjectSetInteger(0,"2",OBJPROP_HIDDEN,1); 
 ObjectSetInteger(0,"2",OBJPROP_ZORDER,0); 
 ObjectSetInteger(0,"2",OBJPROP_XSIZE,15000); 
 ObjectSetInteger(0,"2",OBJPROP_YSIZE,6); 
 ObjectSetInteger(0,"2",OBJPROP_BGCOLOR,0); 
 ObjectSetInteger(0,"2",OBJPROP_BORDER_TYPE,0); 
 ObjectSetInteger(0,"2",OBJPROP_CORNER,0); 
 ObjectSetInteger(0,"2",OBJPROP_COLOR,4294967295); 
 ObjectSetInteger(0,"2",OBJPROP_STYLE,0); 
 ObjectSetInteger(0,"2",OBJPROP_WIDTH,1); 
 ObjectSetInteger(0,"2",OBJPROP_XDISTANCE,-10); 
 ObjectSetInteger(0,"2",OBJPROP_YDISTANCE,140); 
 ObjectSetInteger(0,"2",OBJPROP_XSIZE,15000); 
 ObjectSetInteger(0,"2",OBJPROP_YSIZE,6); 
 ObjectCreate(0,"3",OBJ_RECTANGLE_LABEL,0,0,0.0); 
 ObjectSetInteger(0,"3",OBJPROP_BACK,0); 
 ObjectSetInteger(0,"3",OBJPROP_SELECTABLE,0); 
 ObjectSetInteger(0,"3",OBJPROP_SELECTED,0); 
 ObjectSetInteger(0,"3",OBJPROP_HIDDEN,1); 
 ObjectSetInteger(0,"3",OBJPROP_ZORDER,0); 
 ObjectSetInteger(0,"3",OBJPROP_XSIZE,15000); 
 ObjectSetInteger(0,"3",OBJPROP_YSIZE,6); 
 ObjectSetInteger(0,"3",OBJPROP_BGCOLOR,0); 
 ObjectSetInteger(0,"3",OBJPROP_BORDER_TYPE,0); 
 ObjectSetInteger(0,"3",OBJPROP_CORNER,0); 
 ObjectSetInteger(0,"3",OBJPROP_COLOR,4294967295); 
 ObjectSetInteger(0,"3",OBJPROP_STYLE,0); 
 ObjectSetInteger(0,"3",OBJPROP_WIDTH,1); 
 ObjectSetInteger(0,"3",OBJPROP_XDISTANCE,-10); 
 ObjectSetInteger(0,"3",OBJPROP_YDISTANCE,280); 
 ObjectSetInteger(0,"3",OBJPROP_XSIZE,15000); 
 ObjectSetInteger(0,"3",OBJPROP_YSIZE,6); 
 总_do_51 = MarketInfo(总_st_30,25) ;
 总_lo_121 = 0 ;
 OnTick(); 
 return(0); 
 }
//OnInit
//---------------------  ----------------------------------------

 void OnTick ()
 {
 string      子_st_1;
 string      子_st_2;
 string      子_st_3;
 string      子_st_4;
 string      子_st_5;
 int         子_in_6;
 string      子_st_7;
 int         子_in_8;
 double      子_do_9;
 double      子_do_10;
 double      子_do_11;
 double      子_do_12;
 double      子_do_13;
 double      子_do_14;
 double      子_do_15;
 string      子_st_16;
 string      子_st_17;
 string      子_st_18;
 string      子_st_19;
 string      子_st_20;
 string      子_st_21;
 double      子_do_22;

//----------------------------
 string     临_st_120;  //3125
 int        临_in_11;
 string     临_st_121;  //3128

 if ( ( !(IsTesting()) || 总_bo_1 != false ) )
  {
  if ( 总_bo_117 == false )
   {
   子_st_1 = "EA 只需挂在 EURUSD 1H 图表上，EA 会自动交易 28 个货币对" ;
   子_st_2 = "EA 挂上后没有即刻开仓属于正常现象" ;
   子_st_3 = "EA 在周一和周五单量较少属于正常现象" ;
   子_st_4 = "请您确定您已经允许实时自动交易：在 EURUSD 1H 图表中点击界面右键——选择 EA 交易系统——属性——常用——允许实时交易。" ;
   子_st_5 = "请您确定您已经启动实时交易：点击 MT4 软件正上方中间的 EA 交易，使其由红色变成绿色。" ;
   Alert(子_st_5); 
   Alert(子_st_4); 
   Alert(子_st_3); 
   Alert(子_st_2); 
   Alert(子_st_1); 
   总_bo_117 = true ;
   }
  if ( 金币的喧闹 && AccountBalance()>总_do_122 && 总_do_122!=0.0 )
   {
   PlaySound("alert2.wav"); 
   }
  总_do_122 = AccountBalance() ;
  子_in_6 = 0 ;
  if ( 止损发生后是否持续运行EA == 1 )
   {
   子_in_6 = 0 ;
   }
  if ( 止损发生后是否持续运行EA == 2 )
   {
   子_in_6 = 3600 ;
   }
  if ( 止损发生后是否持续运行EA == 3 )
   {
   子_in_6 = 14400 ;
   }
  if ( 止损发生后是否持续运行EA == 4 )
   {
   子_in_6 = 28800 ;
   }
  if ( 止损发生后是否持续运行EA == 5 )
   {
   子_in_6 = 43200 ;
   }
  if ( 止损发生后是否持续运行EA == 6 )
   {
   子_in_6 = 86400 ;
   }
  if ( 止损发生后是否持续运行EA == 1 && TimeCurrent() - 总_lo_123 <  子_in_6 )
   {
   return;
   }
  if ( 止损发生后是否持续运行EA == 2 && TimeCurrent() - 总_lo_123 <  子_in_6 )
   {
   return;
   }
  if ( 止损发生后是否持续运行EA == 3 && TimeCurrent() - 总_lo_123 <  子_in_6 )
   {
   return;
   }
  if ( 止损发生后是否持续运行EA == 4 && TimeCurrent() - 总_lo_123 <  子_in_6 )
   {
   return;
   }
  if ( 止损发生后是否持续运行EA == 5 && TimeCurrent() - 总_lo_123 <  子_in_6 )
   {
   return;
   }
  if ( 止损发生后是否持续运行EA == 6 && TimeCurrent() - 总_lo_123 <  子_in_6 )
   {
   return;
   }
  if ( IsTradeAllowed() == false && TimeCurrent() - 总_lo_124 >= 300 )
   {
   子_st_7 = "EA尚未启动，请您确定EA已经被授权进行实时自动交易，并允许MT4进行自动交易。" ;
   Alert(子_st_7); 
   总_lo_124 = TimeCurrent() ;
   }
  if ( IsTradeAllowed() == false )
   {
   return;
   }
  if ( 初始开仓手数的选取 == 0 )
   {
   总_st_94 = "固定初始开仓手数模式" ;
   }
  if ( 初始开仓手数的选取 == 3 )
   {
   总_do_52 = 总_do_45 ;
   总_st_94 = "自动设置初始开仓手数" ;
   }
  if ( 交易模式 == 0 )
   {
   总_do_54 = 总_do_46 ;
   总_st_95 = "稳健交易模式（推荐）" ;
   }
  if ( 交易模式 == 1 )
   {
   总_do_54 = 总_do_47 ;
   总_st_95 = "激进交易模式（不鼓励）" ;
   }
  子_in_8 = 2 ;
  子_do_9 = 0.0 ;
  子_do_9 = MarketInfo(总_st_4,23) ;
  子_do_10 = 0.0 ;
  if ( 初始开仓手数的选取 != 0 )
   {
   子_do_10 = AccountBalance() / 总_do_52 * 0.01 ;
   子_do_10 = 子_do_10 * 100.0 ;
   子_do_10 = int(子_do_10) ;
   子_do_10 = 子_do_10 / 100.0 ;
   if ( NormalizeDouble(子_do_9,2)==0.1 )
    {
    子_do_10 = NormalizeDouble(子_do_10,1) ;
   }}
  else
   {
   子_do_10 = 固定初始开仓手数 ;
   }
  子_do_11 = 0.0 ;
  子_do_12 = 0.0 ;
  子_do_11 = 子_do_10 ;
  if ( 子_do_10<MarketInfo(EURUSD,23) )
   {
   子_do_11 = MarketInfo(EURUSD,23) ;
   }
  子_do_12 = 子_do_11 * 100.0 * 10000.0 ;
  if ( AccountBalance()<子_do_12 && TimeCurrent() - 总_lo_121 >= 86400 )
   {
   Alert("您的初始开仓手数为 ",子_do_11," 手，建议入金不应低于 ",子_do_12," USD"); 
   总_lo_121 = TimeCurrent() ;
   }
  ObjectDelete("CC5"); 
  ObjectCreate("CC5",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0); 
  ObjectSetText("CC5",子_do_11,总_in_89,"",0); 
  ObjectSet("CC5",OBJPROP_CORNER,1.0); 
  ObjectSet("CC5",OBJPROP_XDISTANCE,35.0); 
  ObjectSet("CC5",OBJPROP_YDISTANCE,总_in_91 * 2 + 27); 
  ObjectSet("CC5",1036,1.0); 
  ObjectSetInteger(0,"CC5",OBJPROP_ANCHOR,1); 
  ObjectDelete("CC2"); 
  ObjectCreate("CC2",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0); 
  ObjectSetText("CC2",总_st_94,总_in_89,"",0); 
  ObjectSet("CC2",OBJPROP_CORNER,1.0); 
  ObjectSet("CC2",OBJPROP_XDISTANCE,170.0); 
  ObjectSet("CC2",OBJPROP_YDISTANCE,27.0); 
  ObjectSet("CC2",1036,1.0); 
  ObjectSetInteger(0,"CC2",OBJPROP_ANCHOR,1); 
  ObjectDelete("CC3"); 
  ObjectCreate("CC3",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0); 
  ObjectSetText("CC3",总_st_95,总_in_89,"",0); 
  ObjectSet("CC3",OBJPROP_CORNER,1.0); 
  ObjectSet("CC3",OBJPROP_XDISTANCE,170.0); 
  ObjectSet("CC3",OBJPROP_YDISTANCE,总_in_91 + 27); 
  ObjectSet("CC3",1036,1.0); 
  ObjectSetInteger(0,"CC3",OBJPROP_ANCHOR,1); 
  ObjectDelete("CC4"); 
  ObjectCreate("CC4",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0); 
  ObjectSetText("CC4","当前初始开仓手数  ",总_in_89,"",0); 
  ObjectSet("CC4",OBJPROP_CORNER,1.0); 
  ObjectSet("CC4",OBJPROP_XDISTANCE,170.0); 
  ObjectSet("CC4",OBJPROP_YDISTANCE,总_in_91 * 2 + 27); 
  ObjectSet("CC4",1036,1.0); 
  ObjectSetInteger(0,"CC4",OBJPROP_ANCHOR,1); 
  ObjectDelete("DD1"); 
  ObjectCreate("DD1",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0); 
  ObjectSetText("DD1","平台单笔最大开仓手数",总_in_89,"",0); 
  ObjectSet("DD1",OBJPROP_CORNER,3.0); 
  ObjectSet("DD1",OBJPROP_XDISTANCE,330.0); 
  ObjectSet("DD1",OBJPROP_YDISTANCE,15.0); 
  ObjectSet("DD1",1036,1.0); 
  ObjectSetInteger(0,"DD1",OBJPROP_ANCHOR,1); 
  ObjectDelete("DD2"); 
  ObjectCreate("DD2",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0); 
  ObjectSetText("DD2","平台单笔最小开仓手数",总_in_89,"",0); 
  ObjectSet("DD2",OBJPROP_CORNER,3.0); 
  ObjectSet("DD2",OBJPROP_XDISTANCE,330.0); 
  ObjectSet("DD2",OBJPROP_YDISTANCE,总_in_91 + 15); 
  ObjectSet("DD2",1036,1.0); 
  ObjectSetInteger(0,"DD2",OBJPROP_ANCHOR,1); 
  ObjectDelete("DD3"); 
  ObjectCreate("DD3",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0); 
  ObjectSetText("DD3","平台名称",总_in_89,"",0); 
  ObjectSet("DD3",OBJPROP_CORNER,3.0); 
  ObjectSet("DD3",OBJPROP_XDISTANCE,330.0); 
  ObjectSet("DD3",OBJPROP_YDISTANCE,总_in_91 * 2 + 15); 
  ObjectSet("DD3",1036,1.0); 
  ObjectSetInteger(0,"DD3",OBJPROP_ANCHOR,1); 
  ObjectDelete("DD4"); 
  ObjectCreate("DD4",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0); 
  ObjectSetText("DD4",MarketInfo(EURUSD,25),总_in_89,"",0); 
  ObjectSet("DD4",OBJPROP_CORNER,3.0); 
  ObjectSet("DD4",OBJPROP_XDISTANCE,165.0); 
  ObjectSet("DD4",OBJPROP_YDISTANCE,15.0); 
  ObjectSet("DD4",1036,1.0); 
  ObjectSetInteger(0,"DD4",OBJPROP_ANCHOR,1); 
  ObjectDelete("DD5"); 
  ObjectCreate("DD5",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0); 
  ObjectSetText("DD5",MarketInfo(EURUSD,23),总_in_89,"",0); 
  ObjectSet("DD5",OBJPROP_CORNER,3.0); 
  ObjectSet("DD5",OBJPROP_XDISTANCE,165.0); 
  ObjectSet("DD5",OBJPROP_YDISTANCE,总_in_91 + 15); 
  ObjectSet("DD5",1036,1.0); 
  ObjectSetInteger(0,"DD5",OBJPROP_ANCHOR,1); 
  ObjectDelete("DD6"); 
  ObjectCreate("DD6",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0); 
  ObjectSetText("DD6",AccountCompany(),总_in_89,"",0); 
  ObjectSet("DD6",OBJPROP_CORNER,3.0); 
  ObjectSet("DD6",OBJPROP_XDISTANCE,165.0); 
  ObjectSet("DD6",OBJPROP_YDISTANCE,总_in_91 * 2 + 15); 
  ObjectSet("DD6",1036,1.0); 
  ObjectSetInteger(0,"DD6",OBJPROP_ANCHOR,1); 
  子_do_13 = 0.0 ;
  子_do_13 = pro_his ( ) ;
  子_do_14 = 0.0 ;
  子_do_14 = AccountBalance() - 子_do_13 ;
  子_do_15 = 0.0 ;
  子_do_15 = 子_do_13 / 子_do_14 * 100.0 ;
  子_do_15 = NormalizeDouble(子_do_15,2) ;
  ObjectDelete("AA1"); 
  ObjectCreate("AA1",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0); 
  ObjectSetText("AA1",总_st_31,总_in_90,"",0); 
  ObjectSet("AA1",OBJPROP_CORNER,0.0); 
  ObjectSet("AA1",OBJPROP_XDISTANCE,15.0); 
  ObjectSet("AA1",OBJPROP_YDISTANCE,20.0); 
  ObjectDelete("BB1"); 
  ObjectCreate("BB1",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0); 
  ObjectSetText("BB1","累计盈利",总_in_90,"",0); 
  ObjectSet("BB1",OBJPROP_CORNER,0.0); 
  ObjectSet("BB1",OBJPROP_XDISTANCE,15.0); 
  ObjectSet("BB1",OBJPROP_YDISTANCE,175.0); 
  ObjectDelete("BB2"); 
  ObjectCreate("BB2",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0); 
  ObjectSetText("BB2","总收益率",总_in_90,"",0); 
  ObjectSet("BB2",OBJPROP_CORNER,0.0); 
  ObjectSet("BB2",OBJPROP_XDISTANCE,15.0); 
  ObjectSet("BB2",OBJPROP_YDISTANCE,216.0); 
  ObjectDelete("BB3"); 
  ObjectCreate("BB3",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0); 
  ObjectSetText("BB3",string(子_do_13) + " USD",总_in_90,"",0); 
  ObjectSet("BB3",OBJPROP_CORNER,0.0); 
  ObjectSet("BB3",OBJPROP_XDISTANCE,400.0); 
  ObjectSet("BB3",OBJPROP_YDISTANCE,175.0); 
  ObjectDelete("BB4"); 
  ObjectCreate("BB4",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0); 
  ObjectSetText("BB4",string(子_do_15) + "%",总_in_90,"",0); 
  ObjectSet("BB4",OBJPROP_CORNER,0.0); 
  ObjectSet("BB4",OBJPROP_XDISTANCE,400.0); 
  ObjectSet("BB4",OBJPROP_YDISTANCE,216.0); 
  总_st_97 = "" ;
  总_st_98 = 总_st_34 ;
  总_st_99 = 总_st_35 ;
  总_st_100="电邮: " + 总_st_36;
  总_st_101="QQ   : " + 总_st_37;
  总_st_102 = "" ;
  总_st_103 = "" ;
  总_st_104 = 总_st_38 ;
  总_st_105 = 总_st_39 ;
  总_st_106 = 总_st_40 ;
  总_st_107 = "" ;
  总_st_108 = "" ;
  总_st_109 = "" ;
  总_st_110 = "" ;
  总_st_111 = "" ;
  总_st_112 = "" ;
  总_st_113 = "" ;
  总_st_114 = "" ;
  总_st_115 = "" ;
  总_st_116 = "" ;
  ObjectDelete("A1"); 
  ObjectCreate("A1",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0); 
  ObjectSetText("A1","",总_in_89,"",0); 
  ObjectSet("A1",OBJPROP_CORNER,0.0); 
  ObjectSet("A1",OBJPROP_XDISTANCE,15.0); 
  ObjectSet("A1",OBJPROP_YDISTANCE,总_in_92 + 总_in_91); 
  ObjectDelete("A2"); 
  ObjectCreate("A2",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0); 
  ObjectSetText("A2",总_st_34,总_in_89,"",0); 
  ObjectSet("A2",OBJPROP_CORNER,0.0); 
  ObjectSet("A2",OBJPROP_XDISTANCE,15.0); 
  ObjectSet("A2",OBJPROP_YDISTANCE,总_in_92 + 总_in_91 * 2); 
  ObjectDelete("A3"); 
  ObjectCreate("A3",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0); 
  ObjectSetText("A3",总_st_35,总_in_89,"",0); 
  ObjectSet("A3",OBJPROP_CORNER,0.0); 
  ObjectSet("A3",OBJPROP_XDISTANCE,15.0); 
  ObjectSet("A3",OBJPROP_YDISTANCE,总_in_92 + 总_in_91 * 3); 
  ObjectDelete("A4"); 
  ObjectCreate("A4",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0); 
  ObjectSetText("A4",总_st_100,总_in_89,"",0); 
  ObjectSet("A4",OBJPROP_CORNER,0.0); 
  ObjectSet("A4",OBJPROP_XDISTANCE,15.0); 
  ObjectSet("A4",OBJPROP_YDISTANCE,总_in_92 + 总_in_91 * 4); 
  ObjectDelete("A5"); 
  ObjectCreate("A5",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0); 
  ObjectSetText("A5",总_st_101,总_in_89,"",0); 
  ObjectSet("A5",OBJPROP_CORNER,0.0); 
  ObjectSet("A5",OBJPROP_XDISTANCE,15.0); 
  ObjectSet("A5",OBJPROP_YDISTANCE,总_in_92 + 总_in_91 * 5); 
  ObjectDelete("A6"); 
  ObjectCreate("A6",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0); 
  ObjectSetText("A6","",总_in_89,"",0); 
  ObjectSet("A6",OBJPROP_CORNER,0.0); 
  ObjectSet("A6",OBJPROP_XDISTANCE,15.0); 
  ObjectSet("A6",OBJPROP_YDISTANCE,总_in_92 + 总_in_91 * 6); 
  ObjectDelete("A7"); 
  ObjectCreate("A7",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0); 
  ObjectSetText("A7","",总_in_89,"",0); 
  ObjectSet("A7",OBJPROP_CORNER,0.0); 
  ObjectSet("A7",OBJPROP_XDISTANCE,15.0); 
  ObjectSet("A7",OBJPROP_YDISTANCE,总_in_92 + 总_in_91 * 7); 
  ObjectDelete("A8"); 
  ObjectCreate("A8",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0); 
  ObjectSetText("A8",总_st_38,总_in_89,"",0); 
  ObjectSet("A8",OBJPROP_CORNER,0.0); 
  ObjectSet("A8",OBJPROP_XDISTANCE,15.0); 
  ObjectSet("A8",OBJPROP_YDISTANCE,总_in_92 + 总_in_91 * 8); 
  ObjectDelete("A9"); 
  ObjectCreate("A9",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0); 
  ObjectSetText("A9",总_st_39,总_in_89,"",0); 
  ObjectSet("A9",OBJPROP_CORNER,0.0); 
  ObjectSet("A9",OBJPROP_XDISTANCE,15.0); 
  ObjectSet("A9",OBJPROP_YDISTANCE,总_in_92 + 总_in_91 * 9); 
  ObjectDelete("A10"); 
  ObjectCreate("A10",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0); 
  ObjectSetText("A10",总_st_40,总_in_89,"",0); 
  ObjectSet("A10",OBJPROP_CORNER,0.0); 
  ObjectSet("A10",OBJPROP_XDISTANCE,15.0); 
  ObjectSet("A10",OBJPROP_YDISTANCE,总_in_92 + 总_in_91 * 10); 
  ObjectDelete("A11"); 
  ObjectCreate("A11",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0); 
  ObjectSetText("A11","",总_in_89,"",0); 
  ObjectSet("A11",OBJPROP_CORNER,0.0); 
  ObjectSet("A11",OBJPROP_XDISTANCE,15.0); 
  ObjectSet("A11",OBJPROP_YDISTANCE,总_in_92 + 总_in_91 * 11); 
  ObjectDelete("A12"); 
  ObjectCreate("A12",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0); 
  ObjectSetText("A12","",总_in_89,"",0); 
  ObjectSet("A12",OBJPROP_CORNER,0.0); 
  ObjectSet("A12",OBJPROP_XDISTANCE,15.0); 
  ObjectSet("A12",OBJPROP_YDISTANCE,总_in_92 + 总_in_91 * 12); 
  ObjectDelete("A13"); 
  ObjectCreate("A13",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0); 
  ObjectSetText("A13","",总_in_89,"",0); 
  ObjectSet("A13",OBJPROP_CORNER,0.0); 
  ObjectSet("A13",OBJPROP_XDISTANCE,15.0); 
  ObjectSet("A13",OBJPROP_YDISTANCE,总_in_92 + 总_in_91 * 13); 
  ObjectDelete("A14"); 
  ObjectCreate("A14",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0); 
  ObjectSetText("A14","",总_in_89,"",0); 
  ObjectSet("A14",OBJPROP_CORNER,0.0); 
  ObjectSet("A14",OBJPROP_XDISTANCE,15.0); 
  ObjectSet("A14",OBJPROP_YDISTANCE,总_in_92 + 总_in_91 * 14); 
  ObjectDelete("A15"); 
  ObjectCreate("A15",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0); 
  ObjectSetText("A15","",总_in_89,"",0); 
  ObjectSet("A15",OBJPROP_CORNER,0.0); 
  ObjectSet("A15",OBJPROP_XDISTANCE,15.0); 
  ObjectSet("A15",OBJPROP_YDISTANCE,总_in_92 + 总_in_91 * 15); 
  ObjectDelete("A16"); 
  ObjectCreate("A16",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0); 
  ObjectSetText("A16","",总_in_89,"",0); 
  ObjectSet("A16",OBJPROP_CORNER,0.0); 
  ObjectSet("A16",OBJPROP_XDISTANCE,15.0); 
  ObjectSet("A16",OBJPROP_YDISTANCE,总_in_92 + 总_in_91 * 16); 
  ObjectDelete("A17"); 
  ObjectCreate("A17",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0); 
  ObjectSetText("A17","",总_in_89,"",0); 
  ObjectSet("A17",OBJPROP_CORNER,0.0); 
  ObjectSet("A17",OBJPROP_XDISTANCE,15.0); 
  ObjectSet("A17",OBJPROP_YDISTANCE,总_in_92 + 总_in_91 * 17); 
  ObjectDelete("A18"); 
  ObjectCreate("A18",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0); 
  ObjectSetText("A18","",总_in_89,"",0); 
  ObjectSet("A18",OBJPROP_CORNER,0.0); 
  ObjectSet("A18",OBJPROP_XDISTANCE,15.0); 
  ObjectSet("A18",OBJPROP_YDISTANCE,总_in_92 + 总_in_91 * 18); 
  临_st_120 = "";
  临_in_11=总_in_92 + 总_in_91 * 19; 
  临_st_121 = "";
  ObjectDelete("A19"); 
  ObjectCreate("A19",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0); 
  ObjectSetText("A19",临_st_121,总_in_89,临_st_120,0); 
  ObjectSet("A19",OBJPROP_CORNER,0.0); 
  ObjectSet("A19",OBJPROP_XDISTANCE,15.0); 
  ObjectSet("A19",OBJPROP_YDISTANCE,临_in_11); 
  ObjectDelete("A20"); 
  ObjectCreate("A20",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0); 
  ObjectSetText("A20","",总_in_89,"",0); 
  ObjectSet("A20",OBJPROP_CORNER,0.0); 
  ObjectSet("A20",OBJPROP_XDISTANCE,15.0); 
  ObjectSet("A20",OBJPROP_YDISTANCE,总_in_92 + 总_in_91 * 20); 
  子_st_16 = "本版本的EA仅适用于模拟账户，并无法直接用于真实账户。" ;
  子_st_17 = "若您想使用本EA，请您联系 QQ " + 总_st_37 + " 以免费获得授权。" ;
  子_st_18 = "本EA仅授权账号 " + string(总_in_33) + " 使用。" ;
  子_st_19 = "请您联系 QQ " + 总_st_37 + " 以免费获得授权在当前账户使用本EA。" ;
  子_st_20 = "EA 已经启动，并且正在进行交易。" ;
  子_st_21 = "我们追逐的是稳定与可持续的盈利，还请您耐心等候盈利的到来。" ;
  //if ( ( TimeCurrent() > 总_lo_2 || TimeLocal() > 总_lo_2 ) && IsDemo() == false )
   {
   //Alert("EA试用期已经结束，请您尽快与我们取得联系，以免费获得正版EA。"); 
   //return;
   }
  ObjectDelete("AA2"); 
  ObjectCreate("AA2",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0); 
  ObjectSetText("AA2",子_st_20,总_in_89,"",0); 
  ObjectSet("AA2",OBJPROP_CORNER,0.0); 
  ObjectSet("AA2",OBJPROP_XDISTANCE,15.0); 
  ObjectSet("AA2",OBJPROP_YDISTANCE,70.0); 
  ObjectDelete("AA3"); 
  ObjectCreate("AA3",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0); 
  ObjectSetText("AA3",子_st_21,总_in_89,"",0); 
  ObjectSet("AA3",OBJPROP_CORNER,0.0); 
  ObjectSet("AA3",OBJPROP_XDISTANCE,15.0); 
  ObjectSet("AA3",OBJPROP_YDISTANCE,总_in_91 + 70); 
  if ( 子_do_10>总_do_51 )
   {
   Alert("固定初始手数大于平台允许的最大单笔交易手数，请您重新设置固定初始开仓手数。"); 
   return;
   }
  if ( 货币对总控制器 == 0 && GBPUSD == 0 && zhouwu ( 总_st_3) == false )
   {
   buy_fist(总_st_3,子_do_10); 
   sell_fist(总_st_3,子_do_10); 
   }
  if ( ( 货币对总控制器 == 0 || 货币对总控制器 == 1 ) && ( GBPUSD == 0 || GBPUSD == 1 ) )
   {
   buy_jia(总_st_3); 
   sell_jia(总_st_3); 
   }
  closecondi(总_st_3,子_do_11); 
  closetot(总_st_3); 
  if(( 货币对总控制器 == 2 || GBPUSD == 2 ) ){
  while (cheakorders ( 总_st_3) == false)
   {
   closeall ( 总_st_3); 
   }
   }
  if ( 货币对总控制器 == 0 && EURUSD == 0 && zhouwu ( 总_st_4) == false )
   {
   buy_fist(总_st_4,子_do_10); 
   sell_fist(总_st_4,子_do_10); 
   }
  if ( ( 货币对总控制器 == 0 || 货币对总控制器 == 1 ) && ( EURUSD == 0 || EURUSD == 1 ) )
   {
   buy_jia(总_st_4); 
   sell_jia(总_st_4); 
   }
  closecondi(总_st_4,子_do_11); 
  closetot(总_st_4); 
  if(( 货币对总控制器 == 2 || EURUSD == 2 ) ){
  while (cheakorders ( 总_st_4) == false)
   {
   closeall ( 总_st_4); 
   }
   }
  if ( 货币对总控制器 == 0 && USDJPY == 0 && zhouwu ( 总_st_5) == false )
   {
   buy_fist(总_st_4,子_do_10); 
   sell_fist(总_st_4,子_do_10); 
   }
  if ( ( 货币对总控制器 == 0 || 货币对总控制器 == 1 ) && ( USDJPY == 0 || USDJPY == 1 ) )
   {
   buy_jia(总_st_5); 
   sell_jia(总_st_5); 
   }
  closecondi(总_st_5,子_do_11); 
  closetot(总_st_5); 
  if(( 货币对总控制器 == 2 || USDJPY == 2 ) ){
  while (cheakorders ( 总_st_5) == false)
   {
   closeall ( 总_st_5); 
   }
   }
  if ( 货币对总控制器 == 0 && USDCAD == 0 && zhouwu ( 总_st_6) == false )
   {
   buy_fist(总_st_6,子_do_10); 
   sell_fist(总_st_6,子_do_10); 
   }
  if ( ( 货币对总控制器 == 0 || 货币对总控制器 == 1 ) && ( USDCAD == 0 || USDCAD == 1 ) )
   {
   buy_jia(总_st_6); 
   sell_jia(总_st_6); 
   }
  closecondi(总_st_6,子_do_11); 
  closetot(总_st_6); 
  if(( 货币对总控制器 == 2 || USDCAD == 2 ) ){
  while (cheakorders ( 总_st_6) == false)
   {
   closeall ( 总_st_6); 
   }
   }
  if ( 货币对总控制器 == 0 && AUDUSD == 0 && zhouwu ( 总_st_7) == false )
   {
   buy_fist(总_st_7,子_do_10); 
   sell_fist(总_st_7,子_do_10); 
   }
  if ( ( 货币对总控制器 == 0 || 货币对总控制器 == 1 ) && ( AUDUSD == 0 || AUDUSD == 1 ) )
   {
   buy_jia(总_st_7); 
   sell_jia(总_st_7); 
   }
  closecondi(总_st_7,子_do_11); 
  closetot(总_st_7); 
  if(( 货币对总控制器 == 2 || AUDUSD == 2 ) ){
  while (cheakorders ( 总_st_7) == false)
   {
   closeall ( 总_st_7); 
   }
   }
  if ( 货币对总控制器 == 0 && EURGBP == 0 && zhouwu ( 总_st_8) == false )
   {
   buy_fist(总_st_8,子_do_10); 
   sell_fist(总_st_8,子_do_10); 
   }
  if ( ( 货币对总控制器 == 0 || 货币对总控制器 == 1 ) && ( EURGBP == 0 || EURGBP == 1 ) )
   {
   buy_jia(总_st_8); 
   sell_jia(总_st_8); 
   }
  closecondi(总_st_8,子_do_11); 
  closetot(总_st_8); 
  if(( 货币对总控制器 == 2 || EURGBP == 2 ) ){
  while (cheakorders ( 总_st_8) == false)
   {
   closeall ( 总_st_8); 
   }
   }
  if ( 货币对总控制器 == 0 && EURCHF == 0 && zhouwu ( 总_st_9) == false )
   {
   buy_fist(总_st_9,子_do_10); 
   sell_fist(总_st_9,子_do_10); 
   }
  if ( ( 货币对总控制器 == 0 || 货币对总控制器 == 1 ) && ( EURCHF == 0 || EURCHF == 1 ) )
   {
   buy_jia(总_st_9); 
   sell_jia(总_st_9); 
   }
  closecondi(总_st_9,子_do_11); 
  closetot(总_st_9); 
  if(( 货币对总控制器 == 2 || EURCHF == 2 ) ){
  while (cheakorders ( 总_st_9) == false)
   {
   closeall ( 总_st_9); 
   }
   }
  if ( 货币对总控制器 == 0 && EURJPY == 0 && zhouwu ( 总_st_10) == false )
   {
   buy_fist(总_st_10,子_do_10); 
   sell_fist(总_st_10,子_do_10); 
   }
  if ( ( 货币对总控制器 == 0 || 货币对总控制器 == 1 ) && ( EURJPY == 0 || EURJPY == 1 ) )
   {
   buy_jia(总_st_10); 
   sell_jia(总_st_10); 
   }
  closecondi(总_st_10,子_do_11); 
  closetot(总_st_10); 
  if(( 货币对总控制器 == 2 || EURJPY == 2 ) ){
  while (cheakorders ( 总_st_10) == false)
   {
   closeall ( 总_st_10); 
   }
   }
  if ( 货币对总控制器 == 0 && CADJPY == 0 && zhouwu ( 总_st_11) == false )
   {
   buy_fist(总_st_11,子_do_10); 
   sell_fist(总_st_11,子_do_10); 
   }
  if ( ( 货币对总控制器 == 0 || 货币对总控制器 == 1 ) && ( CADJPY == 0 || CADJPY == 1 ) )
   {
   buy_jia(总_st_11); 
   sell_jia(总_st_11); 
   }
  closecondi(总_st_11,子_do_11); 
  closetot(总_st_11); 
  if(( 货币对总控制器 == 2 || CADJPY == 2 ) ){
  while (cheakorders ( 总_st_11) == false)
   {
   closeall ( 总_st_11); 
   }
   }
  if ( 货币对总控制器 == 0 && AUDNZD == 0 && zhouwu ( 总_st_12) == false )
   {
   buy_fist(总_st_12,子_do_10); 
   sell_fist(总_st_12,子_do_10); 
   }
  if ( ( 货币对总控制器 == 0 || 货币对总控制器 == 1 ) && ( AUDNZD == 0 || AUDNZD == 1 ) )
   {
   buy_jia(总_st_12); 
   sell_jia(总_st_12); 
   }
  closecondi(总_st_12,子_do_11); 
  closetot(总_st_12); 
  if(( 货币对总控制器 == 2 || AUDNZD == 2 ) ){
  while (cheakorders ( 总_st_12) == false)
   {
   closeall ( 总_st_12); 
   }
   }
  if ( 货币对总控制器 == 0 && AUDCAD == 0 && zhouwu ( 总_st_13) == false )
   {
   buy_fist(总_st_13,子_do_10); 
   sell_fist(总_st_13,子_do_10); 
   }
  if ( ( 货币对总控制器 == 0 || 货币对总控制器 == 1 ) && ( AUDCAD == 0 || AUDCAD == 1 ) )
   {
   buy_jia(总_st_13); 
   sell_jia(总_st_13); 
   }
  closecondi(总_st_13,子_do_11); 
  closetot(总_st_13); 
  if(( 货币对总控制器 == 2 || AUDCAD == 2 ) ){
  while (cheakorders ( 总_st_13) == false)
   {
   closeall ( 总_st_13); 
   }
   }
  if ( 货币对总控制器 == 0 && AUDCHF == 0 && zhouwu ( 总_st_14) == false )
   {
   buy_fist(总_st_14,子_do_10); 
   sell_fist(总_st_14,子_do_10); 
   }
  if ( ( 货币对总控制器 == 0 || 货币对总控制器 == 1 ) && ( AUDCHF == 0 || AUDCHF == 1 ) )
   {
   buy_jia(总_st_14); 
   sell_jia(总_st_14); 
   }
  closecondi(总_st_14,子_do_11); 
  closetot(总_st_14); 
  if(( 货币对总控制器 == 2 || AUDCHF == 2 ) ){
  while (cheakorders ( 总_st_14) == false)
   {
   closeall ( 总_st_14); 
   }
   }
  if ( 货币对总控制器 == 0 && AUDJPY == 0 && zhouwu ( 总_st_15) == false )
   {
   buy_fist(总_st_15,子_do_10); 
   sell_fist(总_st_15,子_do_10); 
   }
  if ( ( 货币对总控制器 == 0 || 货币对总控制器 == 1 ) && ( AUDJPY == 0 || AUDJPY == 1 ) )
   {
   buy_jia(总_st_15); 
   sell_jia(总_st_15); 
   }
  closecondi(总_st_15,子_do_11); 
  closetot(总_st_15); 
  if(( 货币对总控制器 == 2 || AUDJPY == 2 ) ){
  while (cheakorders ( 总_st_15) == false)
   {
   closeall ( 总_st_15); 
   }
   }
  if ( 货币对总控制器 == 0 && CHFJPY == 0 && zhouwu ( 总_st_16) == false )
   {
   buy_fist(总_st_16,子_do_10); 
   sell_fist(总_st_16,子_do_10); 
   }
  if ( ( 货币对总控制器 == 0 || 货币对总控制器 == 1 ) && ( CHFJPY == 0 || CHFJPY == 1 ) )
   {
   buy_jia(总_st_16); 
   sell_jia(总_st_16); 
   }
  closecondi(总_st_16,子_do_11); 
  closetot(总_st_16); 
  if(( 货币对总控制器 == 2 || CHFJPY == 2 ) ){
  while (cheakorders ( 总_st_16) == false)
   {
   closeall ( 总_st_16); 
   }
   }
  if ( 货币对总控制器 == 0 && CADCHF == 0 && zhouwu ( 总_st_17) == false )
   {
   buy_fist(总_st_17,子_do_10); 
   sell_fist(总_st_17,子_do_10); 
   }
  if ( ( 货币对总控制器 == 0 || 货币对总控制器 == 1 ) && ( CADCHF == 0 || CADCHF == 1 ) )
   {
   buy_jia(总_st_17); 
   sell_jia(总_st_17); 
   }
  closecondi(总_st_17,子_do_11); 
  closetot(总_st_17); 
  if(( 货币对总控制器 == 2 || CADCHF == 2 ) ){
  while (cheakorders ( 总_st_17) == false)
   {
   closeall ( 总_st_17); 
   }
   }
  if ( 货币对总控制器 == 0 && NZDJPY == 0 && zhouwu ( 总_st_18) == false )
   {
   buy_fist(总_st_18,子_do_10); 
   sell_fist(总_st_18,子_do_10); 
   }
  if ( ( 货币对总控制器 == 0 || 货币对总控制器 == 1 ) && ( NZDJPY == 0 || NZDJPY == 1 ) )
   {
   buy_jia(总_st_18); 
   sell_jia(总_st_18); 
   }
  closecondi(总_st_18,子_do_11); 
  closetot(总_st_18); 
  if(( 货币对总控制器 == 2 || NZDJPY == 2 ) ){
  while (cheakorders ( 总_st_18) == false)
   {
   closeall ( 总_st_18); 
   }
   }
  if ( 货币对总控制器 == 0 && NZDUSD == 0 && zhouwu ( 总_st_19) == false )
   {
   buy_fist(总_st_19,子_do_10); 
   sell_fist(总_st_19,子_do_10); 
   }
  if ( ( 货币对总控制器 == 0 || 货币对总控制器 == 1 ) && ( NZDUSD == 0 || NZDUSD == 1 ) )
   {
   buy_jia(总_st_19); 
   sell_jia(总_st_19); 
   }
  closecondi(总_st_19,子_do_11); 
  closetot(总_st_19); 
  if(( 货币对总控制器 == 2 || NZDUSD == 2 ) ){
  while (cheakorders ( 总_st_19) == false)
   {
   closeall ( 总_st_19); 
   }
   }
  if ( 货币对总控制器 == 0 && GBPNZD == 0 && zhouwu ( 总_st_20) == false )
   {
   buy_fist(总_st_20,子_do_10); 
   sell_fist(总_st_20,子_do_10); 
   }
  if ( ( 货币对总控制器 == 0 || 货币对总控制器 == 1 ) && ( GBPNZD == 0 || GBPNZD == 1 ) )
   {
   buy_jia(总_st_20); 
   sell_jia(总_st_20); 
   }
  closecondi(总_st_20,子_do_11); 
  closetot(总_st_20); 
  if(( 货币对总控制器 == 2 || GBPNZD == 2 ) ){
  while (cheakorders ( 总_st_20) == false)
   {
   closeall ( 总_st_20); 
   }
   }
  if ( 货币对总控制器 == 0 && NZDCAD == 0 && zhouwu ( 总_st_21) == false )
   {
   buy_fist(总_st_21,子_do_10); 
   sell_fist(总_st_21,子_do_10); 
   }
  if ( ( 货币对总控制器 == 0 || 货币对总控制器 == 1 ) && ( NZDCAD == 0 || NZDCAD == 1 ) )
   {
   buy_jia(总_st_21); 
   sell_jia(总_st_21); 
   }
  closecondi(总_st_21,子_do_11); 
  closetot(总_st_21); 
  if(( 货币对总控制器 == 2 || NZDCAD == 2 ) ){
  while (cheakorders ( 总_st_21) == false)
   {
   closeall ( 总_st_21); 
   }
   }
  if ( 货币对总控制器 == 0 && NZDCHF == 0 && zhouwu ( 总_st_22) == false )
   {
   buy_fist(总_st_22,子_do_10); 
   sell_fist(总_st_22,子_do_10); 
   }
  if ( ( 货币对总控制器 == 0 || 货币对总控制器 == 1 ) && ( NZDCHF == 0 || NZDCHF == 1 ) )
   {
   buy_jia(总_st_22); 
   sell_jia(总_st_22); 
   }
  closecondi(总_st_22,子_do_11); 
  closetot(总_st_22); 
  if(( 货币对总控制器 == 2 || NZDCHF == 2 ) ){
  while (cheakorders ( 总_st_22) == false)
   {
   closeall ( 总_st_22); 
   }
   }
  if ( 货币对总控制器 == 0 && GBPCAD == 0 && zhouwu ( 总_st_23) == false )
   {
   buy_fist(总_st_23,子_do_10); 
   sell_fist(总_st_23,子_do_10); 
   }
  if ( ( 货币对总控制器 == 0 || 货币对总控制器 == 1 ) && ( GBPCAD == 0 || GBPCAD == 1 ) )
   {
   buy_jia(总_st_23); 
   sell_jia(总_st_23); 
   }
  closecondi(总_st_23,子_do_11); 
  closetot(总_st_23); 
  if(( 货币对总控制器 == 2 || GBPCAD == 2 ) ){
  while (cheakorders ( 总_st_23) == false)
   {
   closeall ( 总_st_23); 
   }
   }
  if ( 货币对总控制器 == 0 && USDCHF == 0 && zhouwu ( 总_st_24) == false )
   {
   buy_fist(总_st_24,子_do_10); 
   sell_fist(总_st_24,子_do_10); 
   }
  if ( ( 货币对总控制器 == 0 || 货币对总控制器 == 1 ) && ( USDCHF == 0 || USDCHF == 1 ) )
   {
   buy_jia(总_st_24); 
   sell_jia(总_st_24); 
   }
  closecondi(总_st_24,子_do_11); 
  closetot(总_st_24); 
  if(( 货币对总控制器 == 2 || USDCHF == 2 ) ){
  while (cheakorders ( 总_st_24) == false)
   {
   closeall ( 总_st_24); 
   }
   }
  if ( 货币对总控制器 == 0 && EURCAD == 0 && zhouwu ( 总_st_25) == false )
   {
   buy_fist(总_st_25,子_do_10); 
   sell_fist(总_st_25,子_do_10); 
   }
  if ( ( 货币对总控制器 == 0 || 货币对总控制器 == 1 ) && ( EURCAD == 0 || EURCAD == 1 ) )
   {
   buy_jia(总_st_25); 
   sell_jia(总_st_25); 
   }
  closecondi(总_st_25,子_do_11); 
  closetot(总_st_25); 
  if(( 货币对总控制器 == 2 || EURCAD == 2 ) ){
  while (cheakorders ( 总_st_25) == false)
   {
   closeall ( 总_st_25); 
   }
   }
  if ( 货币对总控制器 == 0 && EURAUD == 0 && zhouwu ( 总_st_26) == false )
   {
   buy_fist(总_st_26,子_do_10); 
   sell_fist(总_st_26,子_do_10); 
   }
  if ( ( 货币对总控制器 == 0 || 货币对总控制器 == 1 ) && ( EURAUD == 0 || EURAUD == 1 ) )
   {
   buy_jia(总_st_26); 
   sell_jia(总_st_26); 
   }
  closecondi(总_st_26,子_do_11); 
  closetot(总_st_26); 
  if(( 货币对总控制器 == 2 || EURAUD == 2 ) ){
  while (cheakorders ( 总_st_26) == false)
   {
   closeall ( 总_st_26); 
   }
   }
  if ( 货币对总控制器 == 0 && GBPCHF == 0 && zhouwu ( 总_st_27) == false )
   {
   buy_fist(总_st_27,子_do_10); 
   sell_fist(总_st_27,子_do_10); 
   }
  if ( ( 货币对总控制器 == 0 || 货币对总控制器 == 1 ) && ( GBPCHF == 0 || GBPCHF == 1 ) )
   {
   buy_jia(总_st_27); 
   sell_jia(总_st_27); 
   }
  closecondi(总_st_27,子_do_11); 
  closetot(总_st_27); 
  if(( 货币对总控制器 == 2 || GBPCHF == 2 ) ){
  while (cheakorders ( 总_st_27) == false)
   {
   closeall ( 总_st_27); 
   }
   }
  if ( 货币对总控制器 == 0 && EURNZD == 0 && zhouwu ( 总_st_28) == false )
   {
   buy_fist(总_st_28,子_do_10); 
   sell_fist(总_st_28,子_do_10); 
   }
  if ( ( 货币对总控制器 == 0 || 货币对总控制器 == 1 ) && ( EURNZD == 0 || EURNZD == 1 ) )
   {
   buy_jia(总_st_28); 
   sell_jia(总_st_28); 
   }
  closecondi(总_st_28,子_do_11); 
  closetot(总_st_28); 
  if(( 货币对总控制器 == 2 || EURNZD == 2 ) ){
  while (cheakorders ( 总_st_28) == false)
   {
   closeall ( 总_st_28); 
   }
   }
  if ( 货币对总控制器 == 0 && GBPAUD == 0 && zhouwu ( 总_st_29) == false )
   {
   buy_fist(总_st_29,子_do_10); 
   sell_fist(总_st_29,子_do_10); 
   }
  if ( ( 货币对总控制器 == 0 || 货币对总控制器 == 1 ) && ( GBPAUD == 0 || GBPAUD == 1 ) )
   {
   buy_jia(总_st_29); 
   sell_jia(总_st_29); 
   }
  closecondi(总_st_29,子_do_11); 
  closetot(总_st_29); 
  if(( 货币对总控制器 == 2 || GBPAUD == 2 ) ){
  while (cheakorders ( 总_st_29) == false)
   {
   closeall ( 总_st_29); 
   }
   }
  if ( 货币对总控制器 == 0 && GBPJPY == 0 && zhouwu ( 总_st_30) == false )
   {
   buy_fist(总_st_30,子_do_10); 
   sell_fist(总_st_30,子_do_10); 
   }
  if ( ( 货币对总控制器 == 0 || 货币对总控制器 == 1 ) && ( GBPJPY == 0 || GBPJPY == 1 ) )
   {
   buy_jia(总_st_30); 
   sell_jia(总_st_30); 
   }
  closecondi(总_st_30,子_do_11); 
  closetot(总_st_30); 
  if(( 货币对总控制器 == 2 || GBPJPY == 2 ) ){
  while (cheakorders ( 总_st_30) == false)
   {
   closeall ( 总_st_30); 
   }
   }
  子_do_22 = 0.0 ;
  子_do_22 = pro_order ( ) / AccountBalance() ;
  子_do_22 = NormalizeDouble(子_do_22 * 100.0,2) ;
  if ( 子_do_22<= -(报警风险数值) && TimeCurrent() - 总_lo_125>=警报间隔时长 )
   {
   Alert("您的账户的风险值已经超过 ", -(子_do_22),"%,请您即刻去往查看."); 
   总_lo_125 = TimeCurrent() ;
   }
  if ( 子_do_22<= -(总_do_118) )
   {
   
   while (cheakorders_all ( ) == false)
    {
    closeall_all ( ); 
    }
   总_lo_123 = TimeCurrent() ;
   if ( 止损发生后是否持续运行EA == 0 )
    {
    Alert("All the trades have been closed due to the Max Risk Protection Setting, the system has been shutdown, please kindly refer to your account."); 
    ExpertRemove(); 
    }
   if ( 止损发生后是否持续运行EA == 1 )
    {
    Alert("All the trades have been closed due to the Max Risk Protection Setting, the system has been restarted immediately."); 
    }
   if ( 止损发生后是否持续运行EA == 2 )
    {
    Alert("All the trades have been closed due to the Max Risk Protection Setting, the system will be restarted after 1 hour."); 
    }
   if ( 止损发生后是否持续运行EA == 3 )
    {
    Alert("All the trades have been closed due to the Max Risk Protection Setting, the system will be restarted after 4 hour."); 
    }
   if ( 止损发生后是否持续运行EA == 4 )
    {
    Alert("All the trades have been closed due to the Max Risk Protection Setting, the system will be restarted after 8 hour."); 
    }
   if ( 止损发生后是否持续运行EA == 5 )
    {
    Alert("All the trades have been closed due to the Max Risk Protection Setting, the system will be restarted after 12 hour."); 
    }
   if ( 止损发生后是否持续运行EA == 6 )
    {
    Alert("All the trades have been closed due to the Max Risk Protection Setting, the system will be restarted after 24 hour."); 
   }}
  }
 }
//OnTick
//---------------------  ----------------------------------------

 void OnDeinit (const int 木_0)
 {
 int         子_in_1;

//----------------------------

 子_in_1 = 1 ;
 for (子_in_1 = 1 ; 子_in_1 <= 20 ; 子_in_1 = 子_in_1 + 1)
  {
  ObjectDelete("A" + string(子_in_1)); 
  }
 ObjectDelete("1"); 
 ObjectDelete("2"); 
 ObjectDelete("3"); 
 ObjectDelete("AA1"); 
 ObjectDelete("AA2"); 
 ObjectDelete("AA3"); 
 ObjectDelete("AA4"); 
 ObjectDelete("BB1"); 
 ObjectDelete("BB2"); 
 ObjectDelete("BB3"); 
 ObjectDelete("BB4"); 
 ObjectDelete("CC1"); 
 ObjectDelete("CC2"); 
 ObjectDelete("CC3"); 
 ObjectDelete("CC4"); 
 ObjectDelete("CC5"); 
 ObjectDelete("DD1"); 
 ObjectDelete("DD2"); 
 ObjectDelete("DD3"); 
 ObjectDelete("DD4"); 
 ObjectDelete("DD5"); 
 ObjectDelete("DD6"); 
 }
//OnDeinit
//---------------------  ----------------------------------------


//----------------------------


//----------------------------

 int signal (string 木_0)
 {
 double      子_do_1;
 double      子_do_2;
 double      子_do_3;
 double      子_do_4;

//----------------------------

 子_do_1 = iBands(木_0,总_in_41,总_in_64,总_in_65,0,0,1,总_in_66) ;
 子_do_2 = iBands(木_0,总_in_41,总_in_64,总_in_65,0,0,2,总_in_66) ;
 子_do_3 = iStochastic(木_0,总_in_41,总_in_68,总_in_69,总_in_70,0,总_in_71,1,总_in_72) ;
 子_do_4 = iRSI(木_0,总_in_41,总_in_76,0,总_in_77) ;
 if ( 总_bo_63 && 总_bo_67 && 总_bo_75 )
  {
  if ( iHigh(木_0,总_in_41,总_in_66)>子_do_1 && 子_do_3>总_in_74 && 子_do_4>总_in_79 )
   {
   return(2); 
   }
  if ( iLow(木_0,总_in_41,总_in_66)<子_do_2 && 子_do_3<总_in_73 && 子_do_4<总_in_78 )
   {
   return(-2); 
  }}
 if ( 总_bo_63 && 总_bo_67 && !(总_bo_75) )
  {
  if ( iHigh(木_0,总_in_41,总_in_66)>子_do_1 && 子_do_3>总_in_74 )
   {
   return(2); 
   }
  if ( iLow(木_0,总_in_41,总_in_66)<子_do_2 && 子_do_3<总_in_73 )
   {
   return(-2); 
  }}
 if ( 总_bo_63 && !(总_bo_67) && !(总_bo_75) )
  {
  if ( iHigh(木_0,总_in_41,总_in_66)>子_do_1 )
   {
   return(2); 
   }
  if ( iLow(木_0,总_in_41,总_in_66)<子_do_2 )
   {
   return(-2); 
  }}
 if ( !(总_bo_63) && 总_bo_67 && 总_bo_75 )
  {
  if ( 子_do_3>总_in_74 && 子_do_4>总_in_79 )
   {
   return(2); 
   }
  if ( 子_do_3<总_in_73 && 子_do_4<总_in_78 )
   {
   return(-2); 
  }}
 if ( !(总_bo_63) && 总_bo_67 && !(总_bo_75) )
  {
  if ( 子_do_3>总_in_74 )
   {
   return(2); 
   }
  if ( 子_do_3<总_in_73 )
   {
   return(-2); 
  }}
 if ( 总_bo_63 && !(总_bo_67) && 总_bo_75 )
  {
  if ( iHigh(木_0,总_in_41,总_in_66)>子_do_1 && 子_do_4>总_in_79 )
   {
   return(2); 
   }
  if ( iLow(木_0,总_in_41,总_in_66)<子_do_2 && 子_do_4<总_in_78 )
   {
   return(-2); 
  }}
 if ( !(总_bo_63) && !(总_bo_67) && 总_bo_75 )
  {
  if ( 子_do_4>总_in_79 )
   {
   return(2); 
   }
  if ( 子_do_4<总_in_78 )
   {
   return(-2); 
  }}
 return(0); 
 }
//signal
//---------------------  ----------------------------------------

 void buy_fist (string 木_0, double 木_1)
 {
 int         子_in_1;
 long        子_lo_2;
 bool        子_bo_3;
 bool        子_bo_4;
 double      子_do_5;
 int         子_in_6;

//----------------------------

 if ( 止损发生后是否持续运行EA == 1 )
  {
  子_in_1 = 0 ;
  }
 if ( 止损发生后是否持续运行EA == 2 )
  {
  子_in_1 = 3600 ;
  }
 if ( 止损发生后是否持续运行EA == 3 )
  {
  子_in_1 = 14400 ;
  }
 if ( 止损发生后是否持续运行EA == 4 )
  {
  子_in_1 = 28800 ;
  }
 if ( 止损发生后是否持续运行EA == 5 )
  {
  子_in_1 = 43200 ;
  }
 if ( 止损发生后是否持续运行EA == 6 )
  {
  子_in_1 = 86400 ;
  }
 子_lo_2 = 0 ;
 子_bo_3 = false ;
 子_lo_2 = time_last ( 木_0,子_bo_3) ;
 子_bo_4 = false ;
 子_do_5 = 0.0 ;
 子_do_5 = MarketInfo(木_0,23) ;
 if ( 木_1<子_do_5 )
  {
  子_bo_4 = true ;
  木_1 = 子_do_5 ;
  }
 子_in_6 = 0 ;
 if ( signal(木_0) == -2 && cheakorders ( 木_0) && ( 子_bo_3 == false || TimeCurrent() - 子_lo_2 >= 子_in_1 ) )
  {
  if ( 总_bo_59 )
   {
   子_in_6 = OrderSend(木_0,OP_BUY,木_1,MarketInfo(木_0,10),30,MarketInfo(木_0,10) - 总_do_60 * MarketInfo(木_0,11),总_do_61 * MarketInfo(木_0,11) + MarketInfo(木_0,10),"1",magic,0,0xFFFFFFFF) ;
   }
  else
   {
   子_in_6 = OrderSend(木_0,OP_BUY,木_1,MarketInfo(木_0,10),30,0.0,0.0,"1",magic,0,0xFFFFFFFF) ;
   }
  if ( 子_in_6 > 0 && 子_bo_4 )
   {
   Alert("您的初始开仓手数由于小于平台的最小开仓手数，故已经被修正为 ",木_1," 手。"); 
  }}
 }
//buy_fist
//---------------------  ----------------------------------------

 void sell_fist (string 木_0, double 木_1)
 {
 int         子_in_1;
 long        子_lo_2;
 bool        子_bo_3;
 bool        子_bo_4;
 double      子_do_5;
 int         子_in_6;

//----------------------------

 if ( 止损发生后是否持续运行EA == 1 )
  {
  子_in_1 = 0 ;
  }
 if ( 止损发生后是否持续运行EA == 2 )
  {
  子_in_1 = 3600 ;
  }
 if ( 止损发生后是否持续运行EA == 3 )
  {
  子_in_1 = 14400 ;
  }
 if ( 止损发生后是否持续运行EA == 4 )
  {
  子_in_1 = 28800 ;
  }
 if ( 止损发生后是否持续运行EA == 5 )
  {
  子_in_1 = 43200 ;
  }
 if ( 止损发生后是否持续运行EA == 6 )
  {
  子_in_1 = 86400 ;
  }
 子_lo_2 = 0 ;
 子_bo_3 = false ;
 子_lo_2 = time_last ( 木_0,子_bo_3) ;
 子_bo_4 = false ;
 子_do_5 = 0.0 ;
 子_do_5 = MarketInfo(木_0,23) ;
 if ( 木_1<子_do_5 )
  {
  子_bo_4 = true ;
  木_1 = 子_do_5 ;
  }
 子_in_6 = 0 ;
 if ( signal(木_0) == 2 && cheakorders ( 木_0) && ( 子_bo_3 == false || TimeCurrent() - 子_lo_2 >= 子_in_1 ) )
  {
  if ( 总_bo_59 )
   {
   子_in_6 = OrderSend(木_0,OP_SELL,木_1,MarketInfo(木_0,9),30,总_do_60 * MarketInfo(木_0,11) + MarketInfo(木_0,9),MarketInfo(木_0,9) - 总_do_61 * MarketInfo(木_0,11),"1",magic,0,0xFFFFFFFF) ;
   }
  else
   {
   子_in_6 = OrderSend(木_0,OP_SELL,木_1,MarketInfo(木_0,9),30,0.0,0.0,"1",magic,0,0xFFFFFFFF) ;
   }
  if ( 子_in_6 > 0 && 子_bo_4 )
   {
   Alert("您的初始开仓手数由于小于平台的最小开仓手数，故已经被修正为",木_1); 
  }}
 }
//sell_fist
//---------------------  ----------------------------------------

 void buy_jia (string 木_0)
 {
 int         子_in_1;
 int         子_in_2;
 int         子_in_3;
 double      子_do_4;
 string      子_st_5;
 int         子_in_6;
 string      子_st_7;
 double      子_do_8;
 double      子_do_9;
 double      子_do_10;

//----------------------------

 子_st_5 = lastorder_com_buy ( 木_0,子_do_4) ;
 子_in_6 = 0 ;
 子_in_6 = StringToInteger(子_st_5) ;
 子_st_7 = IntegerToString(子_in_6 + 1) ;
 子_do_8 = 0.0 ;
 子_do_9 = 0.0 ;
 子_do_8 = lots_order_buy2 ( 木_0,子_st_5) ;
 子_do_8 = NormalizeDouble(子_do_8 * 总_do_57,总_in_83) ;
 子_do_10 = 0.0 ;
 if ( cheakorders_buy ( 木_0) == false && total ( 木_0) <  总_in_55 && total ( 木_0) <  总_in_120 && 子_do_4 - MarketInfo(木_0,10)>=总_do_54 * MarketInfo(木_0,11) )
  {
  if ( 总_bo_59 )
   {
   if ( 子_do_8<=总_do_51 )
    {
    子_in_1 = OrderSend(木_0,OP_BUY,子_do_8,MarketInfo(木_0,10),30,MarketInfo(木_0,10) - 总_do_60 * MarketInfo(木_0,11),总_do_61 * MarketInfo(木_0,11) + MarketInfo(木_0,10),子_st_7,magic,0,0xFFFFFFFF) ;
    }
   if ( 子_do_8>总_do_51 )
    {
    子_do_10 = 子_do_8 / 总_do_51 ;
    子_do_10 = 子_do_10 ;
    子_do_9 = 子_do_8 - 子_do_10 * 总_do_51 ;
    while (子_in_3<子_do_10)
     {
     子_in_1 = OrderSend(木_0,OP_BUY,总_do_51,MarketInfo(木_0,10),30,MarketInfo(木_0,10) - 总_do_60 * MarketInfo(木_0,11),总_do_61 * MarketInfo(木_0,11) + MarketInfo(木_0,10),子_st_7,magic,0,0xFFFFFFFF) ;
     if ( 子_in_1 > 0 )
      {
      子_in_3 = 子_in_3 + 1;
      }
     }
    while (子_in_2 <= 0)
     {
     子_in_2 = OrderSend(木_0,OP_BUY,子_do_9,MarketInfo(木_0,10),30,MarketInfo(木_0,10) - 总_do_60 * MarketInfo(木_0,11),总_do_61 * MarketInfo(木_0,11) + MarketInfo(木_0,10),子_st_7,magic,0,0xFFFFFFFF) ;
     }
   }}
  if ( !(总_bo_59) )
   {
   if ( 子_do_8<=总_do_51 )
    {
    子_in_1 = OrderSend(木_0,OP_BUY,子_do_8,MarketInfo(木_0,10),30,0.0,0.0,子_st_7,magic,0,0xFFFFFFFF) ;
    }
   if ( 子_do_8>总_do_51 )
    {
    子_do_10 = 子_do_8 / 总_do_51 ;
    子_do_10 = 子_do_10 ;
    子_do_9 = 子_do_8 - 子_do_10 * 总_do_51 ;
    while (子_in_3<子_do_10)
     {
     子_in_1 = OrderSend(木_0,OP_BUY,总_do_51,MarketInfo(木_0,10),30,0.0,0.0,子_st_7,magic,0,0xFFFFFFFF) ;
     if ( 子_in_1 > 0 )
      {
      子_in_3 = 子_in_3 + 1;
      }
     }
    while (子_in_2 <= 0)
     {
     子_in_2 = OrderSend(木_0,OP_BUY,子_do_9,MarketInfo(木_0,10),30,0.0,0.0,子_st_7,magic,0,0xFFFFFFFF) ;
     }
  }}}
 }
//buy_jia
//---------------------  ----------------------------------------

 void sell_jia (string 木_0)
 {
 int         子_in_1;
 int         子_in_2;
 int         子_in_3;
 double      子_do_4;
 string      子_st_5;
 int         子_in_6;
 string      子_st_7;
 double      子_do_8;
 double      子_do_9;
 double      子_do_10;

//----------------------------

 子_st_5 = lastorder_com_sell ( 木_0,子_do_4) ;
 子_in_6 = 0 ;
 子_in_6 = StringToInteger(子_st_5) ;
 子_st_7 = IntegerToString(子_in_6 + 1) ;
 子_do_8 = 0.0 ;
 子_do_9 = 0.0 ;
 子_do_8 = lots_order_sell2 ( 木_0,子_st_5) ;
 子_do_8 = NormalizeDouble(子_do_8 * 总_do_57,总_in_83) ;
 子_do_10 = 0.0 ;
 if ( cheakorders_sell ( 木_0) == false && total ( 木_0) <  总_in_55 && total ( 木_0) <  总_in_120 && MarketInfo(木_0,9) - 子_do_4>=总_do_54 * MarketInfo(木_0,11) )
  {
  if ( 总_bo_59 )
   {
   if ( 子_do_8<=总_do_51 )
    {
    子_in_1 = OrderSend(木_0,OP_SELL,子_do_8,MarketInfo(木_0,9),30,总_do_60 * MarketInfo(木_0,11) + MarketInfo(木_0,9),MarketInfo(木_0,9) - 总_do_61 * MarketInfo(木_0,11),子_st_7,magic,0,0xFFFFFFFF) ;
    }
   if ( 子_do_8>总_do_51 )
    {
    子_do_10 = 子_do_8 / 总_do_51 ;
    子_do_10 = 子_do_10 ;
    子_do_9 = 子_do_8 - 子_do_10 * 总_do_51 ;
    while (子_in_3<子_do_10)
     {
     子_in_1 = OrderSend(木_0,OP_SELL,总_do_51,MarketInfo(木_0,9),30,总_do_60 * MarketInfo(木_0,11) + MarketInfo(木_0,9),MarketInfo(木_0,9) - 总_do_61 * MarketInfo(木_0,11),子_st_7,magic,0,0xFFFFFFFF) ;
     if ( 子_in_1 > 0 )
      {
      子_in_3 = 子_in_3 + 1;
      }
     }
    while (子_in_2 <= 0)
     {
     子_in_2 = OrderSend(木_0,OP_SELL,子_do_9,MarketInfo(木_0,9),30,总_do_60 * MarketInfo(木_0,11) + MarketInfo(木_0,9),MarketInfo(木_0,9) - 总_do_61 * MarketInfo(木_0,11),子_st_7,magic,0,0xFFFFFFFF) ;
     }
   }}
  if ( !(总_bo_59) )
   {
   if ( 子_do_8<=总_do_51 )
    {
    子_in_1 = OrderSend(木_0,OP_SELL,子_do_8,MarketInfo(木_0,9),30,0.0,0.0,子_st_7,magic,0,0xFFFFFFFF) ;
    }
   if ( 子_do_8>总_do_51 )
    {
    子_do_10 = 子_do_8 / 总_do_51 ;
    子_do_10 = 子_do_10 ;
    子_do_9 = 子_do_8 - 子_do_10 * 总_do_51 ;
    while (子_in_3<子_do_10)
     {
     子_in_1 = OrderSend(木_0,OP_SELL,总_do_51,MarketInfo(木_0,9),30,0.0,0.0,子_st_7,magic,0,0xFFFFFFFF) ;
     if ( 子_in_1 > 0 )
      {
      子_in_3 = 子_in_3 + 1;
      }
     }
    while (子_in_2 <= 0)
     {
     子_in_2 = OrderSend(木_0,OP_SELL,子_do_9,MarketInfo(木_0,9),30,0.0,0.0,子_st_7,magic,0,0xFFFFFFFF) ;
     }
  }}}
 }
//sell_jia
//---------------------  ----------------------------------------

 bool cheakorders_sell (string 木_0)
 {
 int         子_in_1;
 bool        子_bo_2;

//----------------------------

 子_bo_2 = true ;
 if ( OrdersTotal() > 0 )
  {
  for (子_in_1 = OrdersTotal() - 1 ; 子_in_1 >= 0 ; 子_in_1 = 子_in_1 - 1)
   {
   if ( !(OrderSelect(子_in_1,SELECT_BY_POS,MODE_TRADES) != false) )   break;
   if ( OrderType() == 1 && OrderSymbol() == 木_0 && OrderMagicNumber() == magic )
    {
    子_bo_2 = false ;
    break;
    }
   }
  }
 return(子_bo_2); 
 }
//cheakorders_sell
//---------------------  ----------------------------------------

 bool cheakorders (string 木_0)
 {
 int         子_in_1;
 bool        子_bo_2;

//----------------------------

 子_bo_2 = true ;
 for (子_in_1 = OrdersTotal() - 1 ; 子_in_1 >= 0 ; 子_in_1 = 子_in_1 - 1)
  {
  if ( !(OrderSelect(子_in_1,SELECT_BY_POS,MODE_TRADES) != false) )   break;
  if ( ( OrderType() == 1 || OrderType() == 0 ) && OrderMagicNumber() == magic && OrderSymbol() == 木_0 )
   {
   子_bo_2 = false ;
   break;
   }
  }
 return(子_bo_2); 
 }
//cheakorders
//---------------------  ----------------------------------------

 bool cheakorders_buy (string 木_0)
 {
 int         子_in_1;
 bool        子_bo_2;

//----------------------------

 子_bo_2 = true ;
 for (子_in_1 = OrdersTotal() - 1 ; 子_in_1 >= 0 ; 子_in_1 = 子_in_1 - 1)
  {
  if ( !(OrderSelect(子_in_1,SELECT_BY_POS,MODE_TRADES) != false) )   break;
  if ( OrderType() == 0 && OrderSymbol() == 木_0 && OrderMagicNumber() == magic )
   {
   子_bo_2 = false ;
   break;
   }
  }
 return(子_bo_2); 
 }
//cheakorders_buy
//---------------------  ----------------------------------------

 int total (string 木_0)
 {
 int         子_in_1;
 int         子_in_2;

//----------------------------

 for (子_in_2 = OrdersTotal() - 1 ; 子_in_2 >= 0 ; 子_in_2 = 子_in_2 - 1)
  {
  if ( !(OrderSelect(子_in_2,SELECT_BY_POS,MODE_TRADES) != false) )   break;
  if ( ( OrderType() == 0 || OrderType() ) && OrderSymbol() == 木_0 && OrderMagicNumber() == magic )
   {
   子_in_1 = 子_in_1 + 1;
   }
  }
 return(子_in_1); 
 }
//total
//---------------------  ----------------------------------------

 double dailyprofit (string 木_0)
 {
 int         子_in_1;
 double      子_do_2;
 int         子_in_3;

//----------------------------

 子_in_1 = Day() ;
 子_do_2 = 0.0 ;
 for (子_in_3 = 0 ; 子_in_3 < HistoryTotal() ; 子_in_3 = 子_in_3 + 1)
  {
  if ( !(OrderSelect(子_in_3,SELECT_BY_POS,MODE_HISTORY) != false) )   break;
  if ( OrderSymbol() == 木_0 && OrderMagicNumber() == magic && TimeDay(OrderOpenTime()) == 子_in_1 )
   {
   子_do_2 = 子_do_2 + OrderProfit() ;
   }
  }
 return(子_do_2); 
 }
//dailyprofit
//---------------------  ----------------------------------------

 void closeall (string 木_0)
 {
 int         子_in_1;
 int         子_in_2;
 int         子_in_3;
 bool        子_bo_4;

//----------------------------

 子_in_1 = OrdersTotal() ;
 for (子_in_2 = 子_in_1 - 1 ; 子_in_2 >= 0 ; 子_in_2 = 子_in_2 - 1)
  {
  if ( !(OrderSelect(子_in_2,SELECT_BY_POS,MODE_TRADES) != false) )   return;
  if ( OrderMagicNumber() == magic && OrderSymbol() == 木_0 )
   {
   子_in_3 = OrderType() ;
   子_bo_4 = true ;
   switch(子_in_3)
    {
    case 0 :
     子_bo_4 = OrderClose(OrderTicket(),OrderLots(),MarketInfo(OrderSymbol(),9),30,0xFFFFFFFF) ;
        break;
    case 1 :
     子_bo_4 = OrderClose(OrderTicket(),OrderLots(),MarketInfo(OrderSymbol(),10),30,0xFFFFFFFF) ;
    }
   if ( 子_bo_4 == false )
    {
    Sleep(总_in_84); 
   }}
  }
 }
//closeall
//---------------------  ----------------------------------------

 double lots_order_buy (string 木_0, double &木_1)
 {
 double      子_do_1;
 int         子_in_2;

//----------------------------

 for (子_in_2 = OrdersTotal() - 1 ; 子_in_2 >= 0 ; 子_in_2 = 子_in_2 - 1)
  {
  if ( !(OrderSelect(子_in_2,SELECT_BY_POS,MODE_TRADES) != false) )   break;
  if ( OrderType() == 0 && OrderSymbol() == 木_0 && OrderMagicNumber() == magic )
   {
   子_do_1 = OrderLots() ;
   break;
   }
  }
 return(子_do_1); 
 }
//lots_order_buy
//---------------------  ----------------------------------------

 double lots_order_sell (string 木_0, double &木_1)
 {
 double      子_do_1;
 int         子_in_2;

//----------------------------

 for (子_in_2 = OrdersTotal() - 1 ; 子_in_2 >= 0 ; 子_in_2 = 子_in_2 - 1)
  {
  if ( !(OrderSelect(子_in_2,SELECT_BY_POS,MODE_TRADES) != false) )   break;
  if ( OrderType() == 1 && OrderSymbol() == 木_0 && OrderMagicNumber() == magic )
   {
   子_do_1 = OrderLots() ;
   break;
   }
  }
 return(子_do_1); 
 }
//lots_order_sell
//---------------------  ----------------------------------------

 string lastorder_com_buy (string 木_0, double &木_1)
 {
 string      子_st_1;
 int         子_in_2;

//----------------------------

 for (子_in_2 = OrdersTotal() - 1 ; 子_in_2 >= 0 ; 子_in_2 = 子_in_2 - 1)
  {
  if ( !(OrderSelect(子_in_2,SELECT_BY_POS,MODE_TRADES) != false) )   break;
  if ( OrderMagicNumber() == magic && OrderType() == 0 && OrderSymbol() == 木_0 )
   {
   子_st_1 = OrderComment() ;
   木_1 = OrderOpenPrice() ;
   break;
   }
  }
 return(子_st_1);
 }
//lastorder_com_buy
//---------------------  ----------------------------------------

 string lastorder_com_sell (string 木_0, double &木_1)
 {
 string      子_st_1;
 int         子_in_2;

//----------------------------

 for (子_in_2 = OrdersTotal() - 1 ; 子_in_2 >= 0 ; 子_in_2 = 子_in_2 - 1)
  {
  if ( !(OrderSelect(子_in_2,SELECT_BY_POS,MODE_TRADES) != false) )   break;
  if ( OrderMagicNumber() == magic && OrderType() == 1 && OrderSymbol() == 木_0 )
   {
   子_st_1 = OrderComment() ;
   木_1 = OrderOpenPrice() ;
   break;
   }
  }
 return(子_st_1);
 }
//lastorder_com_sell
//---------------------  ----------------------------------------

 double lots_order_buy2 (string 木_0, string 木_1)
 {
 double      子_do_1;
 int         子_in_2;

//----------------------------

 for (子_in_2 = OrdersTotal() - 1 ; 子_in_2 >= 0 ; 子_in_2 = 子_in_2 - 1)
  {
  if ( !(OrderSelect(子_in_2,SELECT_BY_POS,MODE_TRADES) != false) )   break;
  if ( OrderType() == 0 && OrderMagicNumber() == magic && OrderSymbol() == 木_0 && OrderComment() == 木_1 )
   {
   子_do_1 = OrderLots() + 子_do_1 ;
   }
  }
 return(子_do_1); 
 }
//lots_order_buy2
//---------------------  ----------------------------------------

 double lots_order_sell2 (string 木_0, string 木_1)
 {
 double      子_do_1;
 int         子_in_2;

//----------------------------

 for (子_in_2 = OrdersTotal() - 1 ; 子_in_2 >= 0 ; 子_in_2 = 子_in_2 - 1)
  {
  if ( !(OrderSelect(子_in_2,SELECT_BY_POS,MODE_TRADES) != false) )   break;
  if ( OrderType() == 1 && OrderMagicNumber() == magic && OrderSymbol() == 木_0 && OrderComment() == 木_1 )
   {
   子_do_1 = OrderLots() + 子_do_1 ;
   }
  }
 return(子_do_1); 
 }
//lots_order_sell2
//---------------------  ----------------------------------------

 double yingkui (string 木_0)
 {
 int         子_in_1;
 double      子_do_2;

//----------------------------

 for (子_in_1 = OrdersTotal() - 1 ; 子_in_1 >= 0 ; 子_in_1 = 子_in_1 - 1)
  {
  if ( !(OrderSelect(子_in_1,SELECT_BY_POS,MODE_TRADES) != false) )   break;
  if ( ( OrderType() == 0 || OrderType() == 1 ) && OrderSymbol() == 木_0 && OrderMagicNumber() == magic )
   {
   子_do_2 = 子_do_2 + OrderProfit() ;
   }
  }
 return(子_do_2); 
 }
//yingkui
//---------------------  ----------------------------------------

 void closecondi (string 木_0, double 木_1)
 {
 double      子_do_1;
 double      子_do_2;

//----------------------------

 子_do_1 = yingkui ( 木_0) ;
 子_do_2 = 0.0 ;
 子_do_2 = 木_1 * 总_do_53 * 100.0 ;
 if(子_do_1>=子_do_2 ){
 while (cheakorders ( 木_0) == false)
  {
  closeall ( 木_0); 
  }
  }
 }
//closecondi
//---------------------  ----------------------------------------

 bool myTimeLimit (string 木_0)
 {
 long        子_lo_1;

//----------------------------

 子_lo_1 = StringToTime(木_0) ;
 if ( TimeCurrent() <  子_lo_1 )
  {
  ObjectCreate(0,"def_la1",OBJ_LABEL,0,0,0.0); 
  ObjectSetInteger(0,"def_la1",OBJPROP_XDISTANCE,20); 
  ObjectSetInteger(0,"def_la1",OBJPROP_YDISTANCE,20); 
  ObjectSetString(0,"def_la1",OBJPROP_FONT,"Trebuchet MS"); 
  ObjectSetInteger(0,"def_la1",OBJPROP_FONTSIZE,12); 
  ObjectSetInteger(0,"def_la1",OBJPROP_CORNER,0); 
  ObjectSetInteger(0,"def_la1",OBJPROP_SELECTABLE,1); 
  ObjectSetString(0,"def_la1",OBJPROP_TOOLTIP,"\n"); 
  ObjectSetString(0,"def_la1",OBJPROP_TEXT,"您的EA试用期限为" + 木_0 + "。"); 
  ObjectSetInteger(0,"def_la1",OBJPROP_COLOR,255); 
  return(true); 
  }
 ObjectCreate(0,"def_la1",OBJ_LABEL,0,0,0.0); 
 ObjectSetInteger(0,"def_la1",OBJPROP_XDISTANCE,20); 
 ObjectSetInteger(0,"def_la1",OBJPROP_YDISTANCE,20); 
 ObjectSetString(0,"def_la1",OBJPROP_FONT,"Trebuchet MS"); 
 ObjectSetInteger(0,"def_la1",OBJPROP_FONTSIZE,12); 
 ObjectSetInteger(0,"def_la1",OBJPROP_CORNER,0); 
 ObjectSetInteger(0,"def_la1",OBJPROP_SELECTABLE,1); 
 ObjectSetString(0,"def_la1",OBJPROP_TOOLTIP,"\n"); 
 ObjectSetString(0,"def_la1",OBJPROP_TEXT,"您的试用期限已过：" + 木_0 + "，您无法继续使用本EA。"); 
 ObjectSetInteger(0,"def_la1",OBJPROP_COLOR,255); 
 return(false); 
 }
//myTimeLimit
//---------------------  ----------------------------------------

 void myCreateLabel (string 木_0, string 木_1, int 木_2, int 木_3, int 木_4, int 木_5, color 木_6, int 木_7)
 {

//----------------------------

 ObjectCreate(木_2,木_1,23,0,0,0.0); 
 ObjectSetInteger(木_2,木_1,OBJPROP_XDISTANCE,木_3); 
 ObjectSetInteger(木_2,木_1,OBJPROP_YDISTANCE,木_4); 
 ObjectSetString(木_2,木_1,OBJPROP_FONT,"Trebuchet MS"); 
 ObjectSetInteger(木_2,木_1,OBJPROP_FONTSIZE,木_5); 
 ObjectSetInteger(木_2,木_1,OBJPROP_CORNER,木_7); 
 ObjectSetInteger(木_2,木_1,OBJPROP_SELECTABLE,1); 
 ObjectSetString(木_2,木_1,OBJPROP_TOOLTIP,"\n"); 
 ObjectSetString(木_2,木_1,OBJPROP_TEXT,木_0); 
 ObjectSetInteger(木_2,木_1,OBJPROP_COLOR,木_6); 
 }
//myCreateLabel
//---------------------  ----------------------------------------

 bool zhouwu (string 木_0)
 {
 bool        子_bo_1;

//----------------------------

 if ( !(总_bo_50) && DayOfWeek() == 5 && total ( 木_0) == 0 )
  {
  子_bo_1 = true ;
  }
 return(子_bo_1); 
 }
//zhouwu
//---------------------  ----------------------------------------

 double lastorder_com_buy (string 木_0)
 {
 double      子_do_1;
 int         子_in_2;

//----------------------------

 for (子_in_2 = OrdersTotal() - 1 ; 子_in_2 >= 0 ; 子_in_2 = 子_in_2 - 1)
  {
  if ( !(OrderSelect(子_in_2,SELECT_BY_POS,MODE_TRADES) != false) )   break;
  if ( OrderMagicNumber() == magic && OrderType() == 0 && OrderSymbol() == 木_0 )
   {
   子_do_1 = OrderOpenPrice() ;
   break;
   }
  }
 return(子_do_1); 
 }
//lastorder_com_buy
//---------------------  ----------------------------------------

 double lastorder_com_sell (string 木_0)
 {
 double      子_do_1;
 int         子_in_2;

//----------------------------

 for (子_in_2 = OrdersTotal() - 1 ; 子_in_2 >= 0 ; 子_in_2 = 子_in_2 - 1)
  {
  if ( !(OrderSelect(子_in_2,SELECT_BY_POS,MODE_TRADES) != false) )   break;
  if ( OrderMagicNumber() == magic && OrderType() == 1 && OrderSymbol() == 木_0 )
   {
   子_do_1 = OrderOpenPrice() ;
   break;
   }
  }
 return(子_do_1); 
 }
//lastorder_com_sell
//---------------------  ----------------------------------------

 bool RectLabel (const string 木_0, const int 木_1, const int 木_2, const int 木_3, const int 木_4, const color 木_5, const int 木_6, const int 木_7, const color 木_8, const int 木_9, const int 木_10)
 {
 int         子_in_1;
 int         子_in_2;

//----------------------------

 if ( ObjectFind(0,木_0) == -1 )
  {
  ObjectCreate(0,木_0,OBJ_RECTANGLE_LABEL,0,0,0.0); 
  ObjectSetInteger(0,木_0,OBJPROP_BACK,0); 
  ObjectSetInteger(0,木_0,OBJPROP_SELECTABLE,0); 
  ObjectSetInteger(0,木_0,OBJPROP_SELECTED,0); 
  ObjectSetInteger(0,木_0,OBJPROP_HIDDEN,1); 
  ObjectSetInteger(0,木_0,OBJPROP_ZORDER,0); 
  ObjectSetInteger(0,木_0,OBJPROP_XSIZE,木_3); 
  ObjectSetInteger(0,木_0,OBJPROP_YSIZE,木_4); 
  ObjectSetInteger(0,木_0,OBJPROP_BGCOLOR,木_5); 
  ObjectSetInteger(0,木_0,OBJPROP_BORDER_TYPE,木_6); 
  ObjectSetInteger(0,木_0,OBJPROP_CORNER,木_7); 
  ObjectSetInteger(0,木_0,OBJPROP_COLOR,木_8); 
  ObjectSetInteger(0,木_0,OBJPROP_STYLE,木_9); 
  ObjectSetInteger(0,木_0,OBJPROP_WIDTH,木_10); 
  }
 ObjectSetInteger(子_in_1,木_0,OBJPROP_XDISTANCE,木_1); 
 ObjectSetInteger(子_in_1,木_0,OBJPROP_YDISTANCE,木_2); 
 ObjectSetInteger(子_in_1,木_0,OBJPROP_XSIZE,木_3); 
 ObjectSetInteger(子_in_1,木_0,OBJPROP_YSIZE,木_4); 
 return(true); 
 }
//RectLabel
//---------------------  ----------------------------------------

 bool Button3 (string 木_0, int 木_1, int 木_2, int 木_3, int 木_4, int 木_5, string 木_6, int 木_7, string 木_8, color 木_9, color 木_10, color 木_11)
 {
 int         子_in_1;
 int         子_in_2;

//----------------------------

 if ( ObjectFind(0,木_0) == -1 )
  {
  ObjectCreate(0,木_0,OBJ_BUTTON,0,0,0.0); 
  ObjectSetInteger(0,木_0,OBJPROP_STATE,0); 
  }
 ObjectSetInteger(子_in_1,木_0,OBJPROP_XDISTANCE,木_1); 
 ObjectSetInteger(子_in_1,木_0,OBJPROP_YDISTANCE,木_2); 
 ObjectSetInteger(子_in_1,木_0,OBJPROP_XSIZE,木_3); 
 ObjectSetInteger(子_in_1,木_0,OBJPROP_YSIZE,木_4); 
 ObjectSetInteger(子_in_1,木_0,OBJPROP_CORNER,木_5); 
 ObjectSetString(子_in_1,木_0,OBJPROP_TEXT,木_6); 
 ObjectSetString(子_in_1,木_0,OBJPROP_FONT,木_8); 
 ObjectSetInteger(子_in_1,木_0,OBJPROP_FONTSIZE,木_7); 
 ObjectSetInteger(子_in_1,木_0,OBJPROP_COLOR,木_9); 
 ObjectSetInteger(子_in_1,木_0,OBJPROP_BGCOLOR,木_10); 
 ObjectSetInteger(子_in_1,木_0,OBJPROP_BORDER_COLOR,木_11); 
 ObjectSetInteger(子_in_1,木_0,OBJPROP_BACK,0); 
 ObjectSetInteger(子_in_1,木_0,OBJPROP_SELECTABLE,0); 
 ObjectSetInteger(子_in_1,木_0,OBJPROP_SELECTED,0); 
 ObjectSetInteger(子_in_1,木_0,OBJPROP_HIDDEN,1); 
 ObjectSetInteger(子_in_1,木_0,OBJPROP_ZORDER,0); 
 ObjectSetInteger(子_in_1,木_0,OBJPROP_WIDTH,0); 
 return(true); 
 }
//Button3
//---------------------  ----------------------------------------

 bool RectLabel3 (string 木_0, int 木_1, int 木_2, int 木_3, int 木_4, int 木_5, color 木_6, color 木_7, int 木_8, int 木_9)
 {
 int         子_in_1;
 int         子_in_2;

//----------------------------

 ObjectCreate(0,木_0,OBJ_RECTANGLE_LABEL,0,0,0.0); 
 ObjectSetInteger(0,木_0,OBJPROP_BACK,0); 
 ObjectSetInteger(0,木_0,OBJPROP_SELECTABLE,0); 
 ObjectSetInteger(0,木_0,OBJPROP_SELECTED,0); 
 ObjectSetInteger(0,木_0,OBJPROP_HIDDEN,1); 
 ObjectSetInteger(0,木_0,OBJPROP_ZORDER,0); 
 ObjectSetInteger(0,木_0,OBJPROP_XSIZE,木_3); 
 ObjectSetInteger(0,木_0,OBJPROP_YSIZE,木_4); 
 ObjectSetInteger(0,木_0,OBJPROP_BGCOLOR,木_6); 
 ObjectSetInteger(0,木_0,OBJPROP_BORDER_TYPE,0); 
 ObjectSetInteger(0,木_0,OBJPROP_CORNER,木_5); 
 ObjectSetInteger(0,木_0,OBJPROP_COLOR,木_7); 
 ObjectSetInteger(0,木_0,OBJPROP_STYLE,木_8); 
 ObjectSetInteger(0,木_0,OBJPROP_WIDTH,木_9); 
 ObjectSetInteger(0,木_0,OBJPROP_XDISTANCE,木_1); 
 ObjectSetInteger(0,木_0,OBJPROP_YDISTANCE,木_2); 
 ObjectSetInteger(0,木_0,OBJPROP_XSIZE,木_3); 
 ObjectSetInteger(0,木_0,OBJPROP_YSIZE,木_4); 
 return(true); 
 }
//RectLabel3
//---------------------  ----------------------------------------

 void idisplay (string 木_0, string 木_1, int 木_2, int 木_3, int 木_4, int 木_5, string 木_6, color 木_7)
 {

//----------------------------

 ObjectDelete(木_0); 
 ObjectCreate(木_0,OBJ_LABEL,0,0,0.0,0,0.0,0,0.0); 
 ObjectSetText(木_0,木_1,木_5,木_6,木_7); 
 ObjectSet(木_0,OBJPROP_CORNER,木_2); 
 ObjectSet(木_0,OBJPROP_XDISTANCE,木_3); 
 ObjectSet(木_0,OBJPROP_YDISTANCE,木_4); 
 }
//idisplay
//---------------------  ----------------------------------------

 void idisplay2 (string 木_0, string 木_1, int 木_2, int 木_3, int 木_4, int 木_5, string 木_6, color 木_7)
 {

//----------------------------

 idisplay ( 木_0,木_1,木_2,木_3,木_4,木_5,木_6,木_7); 
 ObjectSet(木_0,1036,1.0); 
 ObjectSetInteger(0,木_0,OBJPROP_ANCHOR,1); 
 }
//idisplay2
//---------------------  ----------------------------------------

 double pro_his ()
 {
 double      子_do_1;
 int         子_in_2;

//----------------------------

 for (子_in_2 = HistoryTotal() - 1 ; 子_in_2 >= 0 ; 子_in_2 = 子_in_2 - 1)
  {
  if ( !(OrderSelect(子_in_2,SELECT_BY_POS,MODE_HISTORY) != false) )   break;
  if ( ( OrderType() == 0 || OrderType() == 1 ) && OrderMagicNumber() == magic )
   {
   子_do_1 = 子_do_1 + OrderProfit() ;
   }
  }
 return(子_do_1); 
 }
//pro_his
//---------------------  ----------------------------------------

 double pro_order ()
 {
 double      子_do_1;
 int         子_in_2;

//----------------------------

 for (子_in_2 = OrdersTotal() - 1 ; 子_in_2 >= 0 ; 子_in_2 = 子_in_2 - 1)
  {
  if ( !(OrderSelect(子_in_2,SELECT_BY_POS,MODE_TRADES) != false) )   break;
  if ( ( OrderType() == 0 || OrderType() == 1 ) && OrderMagicNumber() == magic )
   {
   子_do_1 = 子_do_1 + OrderProfit() ;
   }
  }
 return(子_do_1); 
 }
//pro_order
//---------------------  ----------------------------------------

 void closeall_all ()
 {
 int         子_in_1;
 int         子_in_2;
 int         子_in_3;
 bool        子_bo_4;

//----------------------------

 子_in_1 = OrdersTotal() ;
 for (子_in_2 = 子_in_1 - 1 ; 子_in_2 >= 0 ; 子_in_2 = 子_in_2 - 1)
  {
  if ( !(OrderSelect(子_in_2,SELECT_BY_POS,MODE_TRADES) != false) )   return;
  if ( OrderMagicNumber() == magic )
   {
   子_in_3 = OrderType() ;
   子_bo_4 = true ;
   switch(子_in_3)
    {
    case 0 :
     子_bo_4 = OrderClose(OrderTicket(),OrderLots(),MarketInfo(OrderSymbol(),9),30,0xFFFFFFFF) ;
        break;
    case 1 :
     子_bo_4 = OrderClose(OrderTicket(),OrderLots(),MarketInfo(OrderSymbol(),10),30,0xFFFFFFFF) ;
    }
   if ( 子_bo_4 == false )
    {
    Sleep(总_in_84); 
   }}
  }
 }
//closeall_all
//---------------------  ----------------------------------------

 bool cheakorders_all ()
 {
 int         子_in_1;
 bool        子_bo_2;

//----------------------------

 子_bo_2 = true ;
 for (子_in_1 = OrdersTotal() - 1 ; 子_in_1 >= 0 ; 子_in_1 = 子_in_1 - 1)
  {
  if ( !(OrderSelect(子_in_1,SELECT_BY_POS,MODE_TRADES) != false) )   break;
  if ( ( OrderType() == 1 || OrderType() == 0 ) && OrderMagicNumber() == magic )
   {
   子_bo_2 = false ;
   break;
   }
  }
 return(子_bo_2); 
 }
//cheakorders_all
//---------------------  ----------------------------------------

 void closetot (string 木_0)
 {
 int         子_in_1;

//----------------------------

 子_in_1 = total ( 木_0) ;
 if(子_in_1 >= 总_in_119 ){
 while (cheakorders ( 木_0) == false)
  {
  closeall ( 木_0); 
  }
  }
 }
//closetot
//---------------------  ----------------------------------------

 datetime time_last (string 木_0, bool &木_1)
 {
 long        子_lo_1;
 int         子_in_2;

//----------------------------

 for (子_in_2 = HistoryTotal() - 1 ; 子_in_2 >= 0 ; 子_in_2 = 子_in_2 - 1)
  {
  if ( !(OrderSelect(子_in_2,SELECT_BY_POS,MODE_HISTORY) != false) )   break;
  if ( ( OrderType() == 0 || OrderType() == 1 ) && OrderSymbol() == 木_0 && OrderMagicNumber() == magic )
   {
   子_lo_1 = OrderCloseTime() ;
   if ( !(OrderProfit()<0.0) )   break;
   木_1 = true ;
   break;
   }
  }
 return(子_lo_1); 
 }
//time_last
//---------------------  ----------------------------------------

