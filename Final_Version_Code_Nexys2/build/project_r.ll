Revision 3
; Created by bitgen P.58f at Tue Jan 28 11:12:41 2014
; Bit lines have the following form:
; <offset> <frame address> <frame offset> <information>
; <information> may be zero or more <kw>=<value> pairs
; Block=<blockname     specifies the block associated with this
;                      memory cell.
;
; Latch=<name>         specifies the latch associated with this memory cell.
;
; Net=<netname>        specifies the user net associated with this
;                      memory cell.
;
; COMPARE=[YES | NO]   specifies whether or not it is appropriate
;                      to compare this bit position between a
;                      "program" and a "readback" bitstream.
;                      If not present the default is NO.
;
; Ram=<ram id>:<bit>   This is used in cases where a CLB function
; Rom=<ram id>:<bit>   generator is used as RAM (or ROM).  <Ram id>
;                      will be either 'F', 'G', or 'M', indicating
;                      that it is part of a single F or G function
;                      generator used as RAM, or as a single RAM
;                      (or ROM) built from both F and G.  <Bit> is
;                      a decimal number.
;
; Info lines have the following form:
; Info <name>=<value>  specifies a bit associated with the LCA
;                      configuration options, and the value of
;                      that bit.  The names of these bits may have
;                      special meaning to software reading the .ll file.
;
Info STARTSEL0=1
Bit   726714 0x001c0000    378 Block=SLICE_X21Y82 Latch=YQ Net=CounterII/counter<13>
Bit   726717 0x001c0000    381 Block=SLICE_X21Y82 Latch=XQ Net=CounterII/counter<12>
Bit   726746 0x001c0000    410 Block=SLICE_X21Y81 Latch=YQ Net=CounterII/counter<11>
Bit   726749 0x001c0000    413 Block=SLICE_X21Y81 Latch=XQ Net=CounterII/counter<10>
Bit   726778 0x001c0000    442 Block=SLICE_X21Y80 Latch=YQ Net=CounterII/counter<9>
Bit   726781 0x001c0000    445 Block=SLICE_X21Y80 Latch=XQ Net=CounterII/counter<8>
Bit   726810 0x001c0000    474 Block=SLICE_X21Y79 Latch=YQ Net=CounterII/counter<7>
Bit   726813 0x001c0000    477 Block=SLICE_X21Y79 Latch=XQ Net=CounterII/counter<6>
Bit   726842 0x001c0000    506 Block=SLICE_X21Y78 Latch=YQ Net=CounterII/counter<5>
Bit   726845 0x001c0000    509 Block=SLICE_X21Y78 Latch=XQ Net=CounterII/counter<4>
Bit   726874 0x001c0000    538 Block=SLICE_X21Y77 Latch=YQ Net=CounterII/counter<3>
Bit   726877 0x001c0000    541 Block=SLICE_X21Y77 Latch=XQ Net=CounterII/counter<2>
Bit   726906 0x001c0000    570 Block=SLICE_X21Y76 Latch=YQ Net=CounterII/counter<1>
Bit   726909 0x001c0000    573 Block=SLICE_X21Y76 Latch=XQ Net=CounterII/counter<0>
Bit  1018618 0x00242400    506 Block=SLICE_X30Y78 Latch=YQ Net=CounterII/signal1
Bit  1083336 0x00280200     40 Block=B9 Latch=I Net=Clk_BUFGP/IBUFG
Bit  1434714 0x00340000    666 Block=SLICE_X44Y73 Latch=YQ Net=Data/data<6>
Bit  1434749 0x00340000    701 Block=SLICE_X44Y72 Latch=XQ Net=Data/data<7>
Bit  1434778 0x00340000    730 Block=SLICE_X44Y71 Latch=YQ Net=Data/Reg_Out<6>
Bit  1434781 0x00340000    733 Block=SLICE_X44Y71 Latch=XQ Net=Data/Reg_Out<7>
Bit  1434810 0x00340000    762 Block=SLICE_X44Y70 Latch=YQ Net=Data/Reg_Out<2>
Bit  1434813 0x00340000    765 Block=SLICE_X44Y70 Latch=XQ Net=Data/Reg_Out<3>
Bit  1437818 0x00340200    666 Block=SLICE_X45Y73 Latch=YQ Net=Data/counter<2>
Bit  1437821 0x00340200    669 Block=SLICE_X45Y73 Latch=XQ Net=Data/counter<3>
Bit  1437850 0x00340200    698 Block=SLICE_X45Y72 Latch=YQ Net=Data/counter<0>
Bit  1437853 0x00340200    701 Block=SLICE_X45Y72 Latch=XQ Net=Data/counter<1>
Bit  1437978 0x00340200    826 Block=SLICE_X45Y68 Latch=YQ Net=Data/signal
Bit  1493690 0x00360000    666 Block=SLICE_X46Y73 Latch=YQ Net=Data/data<0>
Bit  1493693 0x00360000    669 Block=SLICE_X46Y73 Latch=XQ Net=Data/data<1>
Bit  1493722 0x00360000    698 Block=SLICE_X46Y72 Latch=YQ Net=Data/Reg_Out<0>
Bit  1493725 0x00360000    701 Block=SLICE_X46Y72 Latch=XQ Net=Data/Reg_Out<1>
Bit  1493754 0x00360000    730 Block=SLICE_X46Y71 Latch=YQ Net=Data/data<4>
Bit  1493757 0x00360000    733 Block=SLICE_X46Y71 Latch=XQ Net=Data/data<5>
Bit  1493786 0x00360000    762 Block=SLICE_X46Y70 Latch=YQ Net=Data/Reg_Out<4>
Bit  1493789 0x00360000    765 Block=SLICE_X46Y70 Latch=XQ Net=Data/Reg_Out<5>
Bit  1496858 0x00360200    730 Block=SLICE_X47Y71 Latch=YQ Net=Data/data<2>
Bit  1496861 0x00360200    733 Block=SLICE_X47Y71 Latch=XQ Net=Data/data<3>
Bit  1496954 0x00360200    826 Block=SLICE_X47Y68 Latch=YQ Net=Control/state_FSM_FFd1
Bit  1496957 0x00360200    829 Block=SLICE_X47Y68 Latch=XQ Net=Control/state_FSM_FFd2
Bit  1552765 0x00380000    765 Block=SLICE_X48Y70 Latch=XQ Net=Compare/counter<28>
Bit  1552794 0x00380000    794 Block=SLICE_X48Y69 Latch=YQ Net=Compare/counter<27>
Bit  1552797 0x00380000    797 Block=SLICE_X48Y69 Latch=XQ Net=Compare/counter<26>
Bit  1552826 0x00380000    826 Block=SLICE_X48Y68 Latch=YQ Net=Compare/counter<25>
Bit  1552829 0x00380000    829 Block=SLICE_X48Y68 Latch=XQ Net=Compare/counter<24>
Bit  1552858 0x00380000    858 Block=SLICE_X48Y67 Latch=YQ Net=Compare/counter<23>
Bit  1552861 0x00380000    861 Block=SLICE_X48Y67 Latch=XQ Net=Compare/counter<22>
Bit  1552890 0x00380000    890 Block=SLICE_X48Y66 Latch=YQ Net=Compare/counter<21>
Bit  1552893 0x00380000    893 Block=SLICE_X48Y66 Latch=XQ Net=Compare/counter<20>
Bit  1552922 0x00380000    922 Block=SLICE_X48Y65 Latch=YQ Net=Compare/counter<19>
Bit  1552925 0x00380000    925 Block=SLICE_X48Y65 Latch=XQ Net=Compare/counter<18>
Bit  1552954 0x00380000    954 Block=SLICE_X48Y64 Latch=YQ Net=Compare/counter<17>
Bit  1552957 0x00380000    957 Block=SLICE_X48Y64 Latch=XQ Net=Compare/counter<16>
Bit  1552986 0x00380000    986 Block=SLICE_X48Y63 Latch=YQ Net=Compare/counter<15>
Bit  1552989 0x00380000    989 Block=SLICE_X48Y63 Latch=XQ Net=Compare/counter<14>
Bit  1553018 0x00380000   1018 Block=SLICE_X48Y62 Latch=YQ Net=Compare/counter<13>
Bit  1553021 0x00380000   1021 Block=SLICE_X48Y62 Latch=XQ Net=Compare/counter<12>
Bit  1553050 0x00380000   1050 Block=SLICE_X48Y61 Latch=YQ Net=Compare/counter<11>
Bit  1553053 0x00380000   1053 Block=SLICE_X48Y61 Latch=XQ Net=Compare/counter<10>
Bit  1553082 0x00380000   1082 Block=SLICE_X48Y60 Latch=YQ Net=Compare/counter<9>
Bit  1553085 0x00380000   1085 Block=SLICE_X48Y60 Latch=XQ Net=Compare/counter<8>
Bit  1553114 0x00380000   1114 Block=SLICE_X48Y59 Latch=YQ Net=Compare/counter<7>
Bit  1553117 0x00380000   1117 Block=SLICE_X48Y59 Latch=XQ Net=Compare/counter<6>
Bit  1553146 0x00380000   1146 Block=SLICE_X48Y58 Latch=YQ Net=Compare/counter<5>
Bit  1553149 0x00380000   1149 Block=SLICE_X48Y58 Latch=XQ Net=Compare/counter<4>
Bit  1553178 0x00380000   1178 Block=SLICE_X48Y57 Latch=YQ Net=Compare/counter<3>
Bit  1553181 0x00380000   1181 Block=SLICE_X48Y57 Latch=XQ Net=Compare/counter<2>
Bit  1553210 0x00380000   1210 Block=SLICE_X48Y56 Latch=YQ Net=Compare/counter<1>
Bit  1553213 0x00380000   1213 Block=SLICE_X48Y56 Latch=XQ Net=Compare/counter<0>
Bit  1553626 0x00380000   1626 Block=SLICE_X48Y43 Latch=YQ Net=ControllerTx/Rx_Count<1>
Bit  1553629 0x00380000   1629 Block=SLICE_X48Y43 Latch=XQ Net=ControllerTx/Rx_Count<0>
Bit  1553658 0x00380000   1658 Block=SLICE_X48Y42 Latch=YQ Net=ControllerTx/Rx_Count<2>
Bit  1553661 0x00380000   1661 Block=SLICE_X48Y42 Latch=XQ Net=ControllerTx/Rx_Count<3>
Bit  1556026 0x00380200    922 Block=SLICE_X49Y65 Latch=YQ Net=Compare/Do
Bit  1615706 0x003a0200   1626 Block=SLICE_X50Y43 Latch=YQ Net=ControllerTx/Rx_Check
Bit  1616410 0x003a0200   2330 Block=SLICE_X50Y21 Latch=YQ Net=PlotCoder/Repeat
Bit  1619450 0x003a0400   2266 Block=SLICE_X51Y23 Latch=YQ Net=PlotCoder/OK<1>
Bit  1619453 0x003a0400   2269 Block=SLICE_X51Y23 Latch=XQ Net=PlotCoder/OK<0>
Bit  1619546 0x003a0400   2362 Block=SLICE_X51Y20 Latch=YQ Net=PlotCoder/OK<2>
Bit  1619549 0x003a0400   2365 Block=SLICE_X51Y20 Latch=XQ Net=PlotCoder/OK<3>
Bit  1675514 0x003c0200   2458 Block=SLICE_X52Y17 Latch=YQ Net=PlotCoder/DoutTxT<6>
Bit  1675898 0x003c0200   2842 Block=SLICE_X52Y5 Latch=YQ Net=PlotCoder/DoutTxT<7>
Bit  1678554 0x02000000   2394 Block=SLICE_X53Y19 Latch=YQ Net=PlotCoder/DoutTxT<5>
Bit  1734362 0x02002400   2330 Block=SLICE_X54Y21 Latch=YQ Net=ControllerTx/CurrentState_FSM_FFd1
Bit  1734365 0x02002400   2333 Block=SLICE_X54Y21 Latch=XQ Net=ControllerTx/CurrentState_FSM_FFd2
Bit  1734394 0x02002400   2362 Block=SLICE_X54Y20 Latch=YQ Net=ControllerTx/State<2>
Bit  1734426 0x02002400   2394 Block=SLICE_X54Y19 Latch=YQ Net=PlotCoder/DoutTxT<11>
Bit  1734458 0x02002400   2426 Block=SLICE_X54Y18 Latch=YQ Net=PlotCoder/DoutTxT<1>
Bit  1734554 0x02002400   2522 Block=SLICE_X54Y15 Latch=YQ Net=PlotCoder/DoutTxT<0>
Bit  1734714 0x02002400   2682 Block=SLICE_X54Y10 Latch=YQ Net=PlotCoder/DoutTxT<8>
Bit  1734746 0x02002400   2714 Block=SLICE_X54Y9 Latch=YQ Net=PlotCoder/DoutTxT<2>
Bit  1734810 0x02002400   2778 Block=SLICE_X54Y7 Latch=YQ Net=PlotCoder/DoutTxT<4>
Bit  1737466 0x02002600   2330 Block=SLICE_X55Y21 Latch=YQ Net=ControllerTx/State<0>
Bit  1737469 0x02002600   2333 Block=SLICE_X55Y21 Latch=XQ Net=ControllerTx/State<1>
Bit  1737530 0x02002600   2394 Block=SLICE_X55Y19 Latch=YQ Net=PlotCoder/DoutTxT<9>
Bit  1737626 0x02002600   2490 Block=SLICE_X55Y16 Latch=YQ Net=PlotCoder/DoutTxT<3>
Bit  1737693 0x02002600   2557 Block=SLICE_X55Y14 Latch=XQ Net=PlotCoder/DoutTxT<10>
Bit  1855997 0x02007200   2909 Block=SLICE_X59Y3 Latch=XQ Net=PlotCoder/ParityBit
Bit  1970845 0x02022400   2909 Block=SLICE_X62Y3 Latch=XQ Net=PlotCoder/DinT<5>
Bit  1970874 0x02022400   2938 Block=SLICE_X62Y2 Latch=YQ Net=PlotCoder/DinT<1>
Bit  1970877 0x02022400   2941 Block=SLICE_X62Y2 Latch=XQ Net=PlotCoder/DinT<2>
Bit  2087450 0x02027000   1562 Block=SLICE_X64Y45 Latch=YQ Net=Counter/Counter<10>
Bit  2087453 0x02027000   1565 Block=SLICE_X64Y45 Latch=XQ Net=Counter/Counter<11>
Bit  2087482 0x02027000   1594 Block=SLICE_X64Y44 Latch=YQ Net=Counter/Counter<12>
Bit  2087485 0x02027000   1597 Block=SLICE_X64Y44 Latch=XQ Net=Counter/Counter<13>
Bit  2087514 0x02027000   1626 Block=SLICE_X64Y43 Latch=YQ Net=Counter/Counter<8>
Bit  2087517 0x02027000   1629 Block=SLICE_X64Y43 Latch=XQ Net=Counter/Counter<9>
Bit  2087546 0x02027000   1658 Block=SLICE_X64Y42 Latch=YQ Net=Counter/Counter<6>
Bit  2087549 0x02027000   1661 Block=SLICE_X64Y42 Latch=XQ Net=Counter/Counter<7>
Bit  2087610 0x02027000   1722 Block=SLICE_X64Y40 Latch=YQ Net=Counter/Counter<2>
Bit  2087613 0x02027000   1725 Block=SLICE_X64Y40 Latch=XQ Net=Counter/Counter<3>
Bit  2087642 0x02027000   1754 Block=SLICE_X64Y39 Latch=YQ Net=Counter/Counter<1>
Bit  2087738 0x02027000   1850 Block=SLICE_X64Y36 Latch=YQ Net=Counter/TickTack
Bit  2087741 0x02027000   1853 Block=SLICE_X64Y36 Latch=XQ Net=Counter/Counter<0>
Bit  2088218 0x02027000   2330 Block=SLICE_X64Y21 Latch=YQ Net=ControllerTx/CurrentState_FSM_FFd3
Bit  2088221 0x02027000   2333 Block=SLICE_X64Y21 Latch=XQ Net=ControllerTx/CurrentState_FSM_FFd4
Bit  2088253 0x02027000   2365 Block=SLICE_X64Y20 Latch=XQ Net=ControllerTx/CurrentState_FSM_FFd6
Bit  2088442 0x02027000   2554 Block=SLICE_X64Y14 Latch=YQ Net=PlotCoder/BusyFlag
Bit  2088733 0x02027000   2845 Block=SLICE_X64Y5 Latch=XQ Net=PlotCoder/DinT<7>
Bit  2090778 0x02027200   1786 Block=SLICE_X65Y38 Latch=YQ Net=Counter/Counter<4>
Bit  2090781 0x02027200   1789 Block=SLICE_X65Y38 Latch=XQ Net=Counter/Counter<5>
Bit  2091866 0x02027200   2874 Block=SLICE_X65Y4 Latch=YQ Net=PlotCoder/DinT<4>
Bit  2091869 0x02027200   2877 Block=SLICE_X65Y4 Latch=XQ Net=PlotCoder/DinT<6>
Bit  2147706 0x02029600   2842 Block=SLICE_X66Y5 Latch=YQ Net=PlotCoder/DinT<0>
Bit  2147709 0x02029600   2845 Block=SLICE_X66Y5 Latch=XQ Net=PlotCoder/DinT<3>
Bit  2150298 0x04000000   2330 Block=SLICE_X67Y21 Latch=YQ Net=ControllerTx/CurrentState_FSM_FFd5
Bit  2205232 0x04002400   1392 Block=J14 Latch=O2 Net=Compare/conf2_mux0000<1>
Bit  2205255 0x04002400   1415 Block=J15 Latch=O2 Net=Compare/conf2_mux0000<0>
Bit  2205872 0x04002400   2032 Block=L15 Latch=O2 Net=PlotCoder/DoutTxT<11>
Bit  2206407 0x04002400   2567 Block=M14 Latch=O2 Net=PlotCoder/BusyFlag_mux0000
Bit  2211111 0x04020200   1063 Block=G18 Latch=I Net=Reset_IBUF
Bit  2211816 0x04020200   1768 Block=K12 Latch=I Net=Rx_IBUF
Bit  2212391 0x04020200   2343 Block=L14 Latch=I Net=ND_IBUF
Bit  2212495 0x04020200   2447 Block=P17 Latch=I Net=Eviction_IBUF
Bit  2212711 0x04020200   2663 Block=P15 Latch=I Net=Din_7_IBUF
Bit  2212776 0x04020200   2728 Block=R16 Latch=I Net=Din_6_IBUF
Bit  2212815 0x04020200   2767 Block=R15 Latch=I Net=Din_5_IBUF
Bit  2212839 0x04020200   2791 Block=R17 Latch=I Net=Din_4_IBUF
Bit  2212904 0x04020200   2856 Block=T18 Latch=I Net=Din_3_IBUF
Bit  2212943 0x04020200   2895 Block=R18 Latch=I Net=Din_0_IBUF
Bit  2213032 0x04020200   2984 Block=T17 Latch=I Net=Din_1_IBUF
Bit  2213071 0x04020200   3023 Block=U18 Latch=I Net=Din_2_IBUF
