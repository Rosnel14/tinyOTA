v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1270 -1540 1360 -1540 {lab=#net1}
N 1270 -1480 1400 -1480 {lab=GND}
N 1400 -1510 1400 -1480 {lab=GND}
N 1530 -1490 1530 -1480 {lab=GND}
N 1400 -1480 1530 -1480 {lab=GND}
N 1530 -1590 1530 -1550 {lab=#net2}
N 1400 -1590 1530 -1590 {lab=#net2}
N 1400 -1590 1400 -1570 {lab=#net2}
N 1400 -1540 1430 -1540 {lab=GND}
N 1410 -1500 1440 -1500 {lab=GND}
N 1440 -1540 1440 -1500 {lab=GND}
N 1430 -1540 1440 -1540 {lab=GND}
N 1400 -1500 1410 -1500 {lab=GND}
N 1260 -1540 1270 -1540 {lab=#net1}
N 1400 -1670 1400 -1650 {lab=GND}
N 1400 -1700 1430 -1700 {lab=GND}
N 1430 -1700 1430 -1660 {lab=GND}
N 1400 -1660 1430 -1660 {lab=GND}
N 1530 -1760 1530 -1590 {lab=#net2}
N 1400 -1760 1530 -1760 {lab=#net2}
N 1400 -1760 1400 -1730 {lab=#net2}
N 1300 -1700 1360 -1700 {lab=#net1}
N 1300 -1700 1300 -1540 {lab=#net1}
C {sky130_fd_pr/nfet_01v8.sym} 1380 -1540 0 0 {name=M1
W=1
L=0.15
nf=1 
mult=1
ad="'int((@nf + 1)/2) * @W / @nf * 0.29'" 
pd="'2*int((@nf + 1)/2) * (@W / @nf + 0.29)'"
as="'int((@nf + 2)/2) * @W / @nf * 0.29'" 
ps="'2*int((@nf + 2)/2) * (@W / @nf + 0.29)'"
nrd="'0.29 / @W '" nrs="'0.29 / @W '"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {title.sym} 900 -1350 0 0 {name=l1 author="Rosnel Alejandro Leyva-Cortes, Hadley Pade"}
C {vsource.sym} 1270 -1510 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} 1530 -1520 0 0 {name=V2 value=0.9 savecurrent=false}
C {code.sym} 1860 -1520 0 0 {name=spice_singleFet only_toplevel=false value="

.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.control
	dc V1 0 1.8 0.01
.endc


.save all
"}
C {gnd.sym} 1420 -1480 0 0 {name=l2 lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1380 -1700 0 0 {name=M2
W=1
L=0.15
nf=1
mult=1
ad="'int((@nf + 1)/2) * @W / @nf * 0.29'" 
pd="'2*int((@nf + 1)/2) * (@W / @nf + 0.29)'"
as="'int((@nf + 2)/2) * @W / @nf * 0.29'" 
ps="'2*int((@nf + 2)/2) * (@W / @nf + 0.29)'"
nrd="'0.29 / @W '" nrs="'0.29 / @W '"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {gnd.sym} 1400 -1650 0 0 {name=l3 lab=GND}
