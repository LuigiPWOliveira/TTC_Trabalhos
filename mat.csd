<CsoundSynthesizer>
<CsOptions>
-odac -d -O null
</CsOptions>
<CsInstruments>
; ====================
sr = 44100
kr = 441
ksmps = 100
nchnls = 2
; ====================

; =======================================
instr 1 ; (short atack, long release)
; =======================================
iamp = p5 * 25000
ifreq = cpspch(p4)
itable = 1

kamp linen 1.0, 0.05, p3, (0.9 * p3)
asig oscil iamp, ifreq, itable
aout = kamp * asig
outs aout, aout
; =======================================
endin
; =======================================
; =======================================
instr 2 ; (medium atack, short release)
; =======================================
iamp = p5 * 25000
ifreq = cpspch(p4)
itable = 2

kamp linen 1.0, 0.1, p3, (0.1 * p3)
asig oscil iamp, ifreq, itable
aout = kamp * asig
outs aout, aout
; =======================================
endin
; =======================================
; =======================================
instr 3 ; (long atack, long release)
; =======================================
iamp = p5 * 25000
ifreq = cpspch(p4)
itable = 3

kamp linen 1.0, (0.4 * p3), p3, (0.3 * p3)
asig oscil iamp, ifreq, itable
aout = kamp * asig
outs aout, aout
; =======================================
endin
; =======================================
; =======================================
instr 4 ; (short atack, medium release)
; =======================================
iamp = p5 * 25000
ifreq = cpspch(p4)
itable = 4

kamp linen 1.0, 0.03, p3, (0.4 * p3)
asig oscil iamp, ifreq, itable
aout = kamp * asig
outs aout, aout
; =======================================
endin
; =======================================
</CsInstruments>
<CsScore>
; ========================================
; Function Tables:
; ========================================
f1 0 4096 10 1 .9 .1 .8 .2 .7 .3 .6 .4 .5
f2 0 4096 10 1 0 1 0 1 0 1 0 1
f3 0 4096 10 .1 .3 .5 .7 .5 .3 .1
f4 0 4096 10 .8 .6 .4 .2 .4 .6 .8

; ========================================

; ========================================
; VOICE: 0, Instr.: 0
; ========================================

i1	0.000		0.500		8.00		1.000		
i1	0.500		0.500		8.02		1.000		
i1	1.000		0.500		8.04		1.000		
i1	1.500		0.500		8.07		1.000		
i1	2.000		0.500		8.09		1.000		
i1	2.500		0.170		7.09		0.750		
i1	2.670		0.170		6.04		0.400		
i1	2.840		0.170		7.04		0.400		
i1	3.010		0.170		7.03		0.400		
i1	3.180		0.170		8.06		0.400		
i1	3.350		0.170		6.07		0.400		
i1	3.520		0.170		7.10		0.400		
i1	3.690		0.170		6.09		0.750		
i1	3.860		0.170		5.04		0.400		
i1	4.030		0.170		6.04		0.400		
i1	4.200		0.170		6.03		0.400		
i1	4.370		0.170		7.06		0.400		
i1	4.540		0.170		5.07		0.400		
i1	4.710		0.170		6.10		0.400		
i1	4.880		0.170		7.00		0.750		
i1	5.050		0.170		6.11		0.400		
i1	5.220		0.170		7.10		0.400		
i1	5.390		0.170		8.10		0.400		
i1	5.560		0.170		7.03		0.400		
i1	5.730		0.170		6.01		0.400		
i1	5.900		0.170		7.10		0.400		
i1	6.070		0.170		8.00		0.750		
i1	6.240		0.170		7.11		0.400		
i1	6.410		0.170		8.10		0.400		
i1	6.580		0.170		9.10		0.400		
i1	6.750		0.170		8.03		0.400		
i1	6.920		0.170		7.01		0.400		
i1	7.090		0.170		8.10		0.400		
i1	7.260		0.170		7.11		0.750		
i1	7.430		0.170		7.04		0.400		
i1	7.600		0.170		8.11		0.400		
i1	7.770		0.170		8.07		0.400		
i1	7.940		0.170		6.02		0.400		
i1	8.110		0.170		6.10		0.400		
i1	8.280		0.170		6.04		0.400		
i1	8.450		0.170		6.11		0.750		
i1	8.620		0.170		6.04		0.400		
i1	8.790		0.170		7.11		0.400		
i1	8.960		0.170		7.07		0.400		
i1	9.130		0.170		5.02		0.400		
i1	9.300		0.170		5.10		0.400		
i1	9.470		0.170		5.04		0.400		
i1	9.640		0.170		8.03		0.750		
i1	9.810		0.170		7.11		0.400		
i1	9.980		0.170		7.06		0.400		
i1	10.150		0.170		7.10		0.400		
i1	10.320		0.170		7.03		0.400		
i1	10.490		0.170		7.11		0.400		
i1	10.660		0.170		6.06		0.400		
i1	10.830		0.170		9.03		0.750		
i1	11.000		0.170		8.11		0.400		
i1	11.170		0.170		8.06		0.400		
i1	11.340		0.170		8.10		0.400		
i1	11.510		0.170		8.03		0.400		
i1	11.680		0.170		8.11		0.400		
i1	11.850		0.170		7.06		0.400		
i1	12.020		0.170		6.06		0.750		
i1	12.190		0.170		6.00		0.400		
i1	12.360		0.170		8.05		0.400		
i1	12.530		0.170		7.02		0.400		
i1	12.700		0.170		6.07		0.400		
i1	12.870		0.170		7.03		0.400		
i1	13.040		0.170		6.10		0.400		
i1	13.210		0.170		7.06		0.750		
i1	13.380		0.170		7.00		0.400		
i1	13.550		0.170		9.05		0.400		
i1	13.720		0.170		8.02		0.400		
i1	13.890		0.170		7.07		0.400		
i1	14.060		0.170		8.03		0.400		
i1	14.230		0.170		7.10		0.400		
i1	14.400		0.170		6.04		0.750		
i1	14.570		0.170		6.10		0.400		
i1	14.740		0.170		8.08		0.400		
i1	14.910		0.170		8.10		0.400		
i1	15.080		0.170		6.11		0.400		
i1	15.250		0.170		8.09		0.400		
i1	15.420		0.170		7.04		0.400		
i1	15.590		0.170		7.04		0.750		
i1	15.760		0.170		7.10		0.400		
i1	15.930		0.170		9.08		0.400		
i1	16.100		0.170		9.10		0.400		
i1	16.270		0.170		7.11		0.400		
i1	16.440		0.170		9.09		0.400		
i1	16.610		0.170		8.04		0.400		
i1	16.780		0.170		8.03		0.750		
i1	16.950		0.170		8.05		0.400		
i1	17.120		0.170		6.06		0.400		
i1	17.290		0.170		6.07		0.400		
i1	17.460		0.170		7.05		0.400		
i1	17.630		0.170		8.02		0.400		
i1	17.800		0.170		7.06		0.400		
i1	17.970		0.170		9.03		0.750		
i1	18.140		0.170		9.05		0.400		
i1	18.310		0.170		7.06		0.400		
i1	18.480		0.170		7.07		0.400		
i1	18.650		0.170		8.05		0.400		
i1	18.820		0.170		9.02		0.400		
i1	18.990		0.170		8.06		0.400		
i1	19.160		0.170		7.00		0.750		
i1	19.330		0.170		6.00		0.400		
i1	19.500		0.170		6.07		0.400		
i1	19.670		0.170		6.05		0.400		
i1	19.840		0.170		6.01		0.400		
i1	20.010		0.170		7.02		0.400		
i1	20.180		0.170		7.08		0.400		
i1	20.350		0.170		6.00		0.750		
i1	20.520		0.170		5.00		0.400		
i1	20.690		0.170		5.07		0.400		
i1	20.860		0.170		5.05		0.400		
i1	21.030		0.170		5.01		0.400		
i1	21.200		0.170		6.02		0.400		
i1	21.370		0.170		6.08		0.400		
i1	21.540		0.170		7.02		0.750		
i1	21.710		0.170		8.03		0.400		
i1	21.880		0.170		6.00		0.400		
i1	22.050		0.170		6.00		0.400		
i1	22.220		0.170		7.08		0.400		
i1	22.390		0.170		8.01		0.400		
i1	22.560		0.170		8.11		0.400		
i1	22.730		0.170		6.02		0.750		
i1	22.900		0.170		7.03		0.400		
i1	23.070		0.170		5.00		0.400		
i1	23.240		0.170		5.00		0.400		
i1	23.410		0.170		6.08		0.400		
i1	23.580		0.170		7.01		0.400		
i1	23.750		0.170		7.11		0.400		
i1	23.920		0.170		9.00		0.750		
i1	24.090		0.170		6.08		0.400		
i1	24.260		0.170		7.10		0.400		
i1	24.430		0.170		8.01		0.400		
i1	24.600		0.170		7.07		0.400		
i1	24.770		0.170		7.04		0.400		
i1	24.940		0.170		6.01		0.400		
i1	25.110		0.170		10.00		0.750		
i1	25.280		0.170		7.08		0.400		
i1	25.450		0.170		8.10		0.400		
i1	25.620		0.170		9.01		0.400		
i1	25.790		0.170		8.07		0.400		
i1	25.960		0.170		8.04		0.400		
i1	26.130		0.170		7.01		0.400		

; ========================================
; END VOICE 0
; ========================================

</CsScore>
</CsoundSynthesizer>
