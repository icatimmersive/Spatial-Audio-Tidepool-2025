<CsoundSynthesizer>
<CsInstruments>
sr=44100
ksmps = 32
nchnls = 64
0dbfs = 1

instr 1
      ifile = p4
      ipartials ATSinfo ifile, 3
      print ipartials
endin

instr 2
      istart = p4
      iend = p5
      ifile = p6
      ipartial = p7
      igain = p8
      ktime line istart, p3, iend
      kfreq, kamp ATSread ktime, ifile, ipartial 
      asig oscili kamp * igain, kfreq, 1
      outs asig,asig
endin
instr 3
      istart = p4
      iend = p5
      ifile = p6
      ipartial = p7
      igain = p8
      itransp = p9
      ktime line istart, p3, iend
      kfreq, kamp ATSread ktime, ifile, ipartial 
      asig oscili kamp * igain, kfreq * itransp, 1
      outs asig,asig
endin
instr 4
      istart = p4
      iend = p5
      ifile = p6
      ipartial = p7
      igain = p8
      itransp = p9
      iloc = p10
      ipio2 = 1.5707963267949
      ileft = cos(iloc * ipio2)
      iright = sin(iloc * ipio2)
      ktime line istart, p3, iend
      kfreq, kamp ATSread ktime, ifile, ipartial 
      asig oscili kamp * igain, kfreq * itransp, 1
      outs asig * ileft,asig * iright
endin

instr 5
      istart = p4
      iend = p5
      ifile = p6
      ipartial = p7
      igain = p8
      itransp = p9
      ichan = p10
      ktime line istart, p3, iend
      kfreq, kamp ATSread ktime, ifile, ipartial 
      asig oscili kamp * igain, kfreq * itransp, 1
      outch ichan,asig
endin

</CsInstruments>
<CsScore>
f1 0 16384 10 1
i5 0 8.4 0 0.42 "cello.ats" 1 0.25 1.2599210498949 1
i5 0 8.4 0 0.42 "cello.ats" 2 0.25 1.6817928305074 2
i5 0 8.4 0 0.42 "cello.ats" 3 0.25 1.4983070768767 3
i5 0 8.4 0 0.42 "cello.ats" 4 0.25 1.4142135623731 4
i5 0 8.4 0 0.42 "cello.ats" 5 0.25 0.74915353843834 5
i5 0 8.4 0 0.42 "cello.ats" 6 0.25 0.7937005259841 6
i5 0 8.4 0 0.42 "cello.ats" 7 0.25 1.5874010519682 7
i5 0 8.4 0 0.42 "cello.ats" 8 0.25 0.5 8
i5 0 8.4 0 0.42 "cello.ats" 9 0.25 0.74915353843834 9
i5 0 8.4 0 0.42 "cello.ats" 10 0.25 1.1892071150027 10
i5 0 8.4 0 0.42 "cello.ats" 11 0.25 1.2599210498949 11
i5 0 8.4 0 0.42 "cello.ats" 12 0.25 1.1224620483094 12
i5 0 8.4 0 0.42 "cello.ats" 13 0.25 1.4142135623731 13
i5 0 8.4 0 0.42 "cello.ats" 14 0.25 1.6817928305074 14
i5 0 8.4 0 0.42 "cello.ats" 15 0.25 0.89089871814034 15
i5 0 8.4 0 0.42 "cello.ats" 16 0.25 0.52973154717965 16
i5 0 8.4 0 0.42 "cello.ats" 17 0.25 1.1892071150027 17
i5 0 8.4 0 0.42 "cello.ats" 18 0.25 0.70710678118655 18
i5 0 8.4 0 0.42 "cello.ats" 19 0.25 1.6817928305074 19
i5 0 8.4 0 0.42 "cello.ats" 20 0.25 0.56123102415469 20
i5 0 8.4 0 0.42 "cello.ats" 21 0.25 0.62996052494744 21
i5 0 8.4 0 0.42 "cello.ats" 22 0.25 0.7937005259841 22
i5 0 8.4 0 0.42 "cello.ats" 23 0.25 1.6817928305074 23
i5 0 8.4 0 0.42 "cello.ats" 24 0.25 1.2599210498949 24
i5 0 8.4 0 0.42 "cello.ats" 25 0.25 0.52973154717965 25
i5 0 8.4 0 0.42 "cello.ats" 26 0.25 0.7937005259841 26
i5 0 8.4 0 0.42 "cello.ats" 27 0.25 1.33483985417 27
i5 0 8.4 0 0.42 "cello.ats" 28 0.25 2.0 28
i5 0 8.4 0 0.42 "cello.ats" 29 0.25 1.0 29
i5 0 8.4 0 0.42 "cello.ats" 30 0.25 1.0 30
i5 0 8.4 0 0.42 "cello.ats" 31 0.25 0.66741992708502 31
i5 0 8.4 0 0.42 "cello.ats" 32 0.25 1.8877486253634 32
i5 0 8.4 0 0.42 "cello.ats" 33 0.25 0.66741992708502 33
i5 0 8.4 0 0.42 "cello.ats" 34 0.25 1.0594630943593 34
i5 0 8.4 0 0.42 "cello.ats" 35 0.25 0.94387431268169 35
i5 0 8.4 0 0.42 "cello.ats" 36 0.25 0.66741992708502 36
i5 0 8.4 0 0.42 "cello.ats" 37 0.25 0.5 37
i5 0 8.4 0 0.42 "cello.ats" 38 0.25 1.6817928305074 38
i5 0 8.4 0 0.42 "cello.ats" 39 0.25 0.62996052494744 39
i5 0 8.4 0 0.42 "cello.ats" 40 0.25 0.66741992708502 40
i5 0 8.4 0 0.42 "cello.ats" 41 0.25 0.66741992708502 41
i5 0 8.4 0 0.42 "cello.ats" 42 0.25 0.66741992708502 42
i5 0 8.4 0 0.42 "cello.ats" 43 0.25 1.0594630943593 43
i5 0 8.4 0 0.42 "cello.ats" 44 0.25 0.5 44
i5 0 8.4 0 0.42 "cello.ats" 45 0.25 2.0 45
i5 0 8.4 0 0.42 "cello.ats" 46 0.25 1.5874010519682 46
i5 0 8.4 0 0.42 "cello.ats" 47 0.25 2.0 47
i5 0 8.4 0 0.42 "cello.ats" 48 0.25 0.5 48
i5 0 8.4 0 0.42 "cello.ats" 49 0.25 1.7817974362807 49
i5 0 8.4 0 0.42 "cello.ats" 50 0.25 0.74915353843834 50
i5 0 8.4 0 0.42 "cello.ats" 51 0.25 0.89089871814034 51
i5 0 8.4 0 0.42 "cello.ats" 52 0.25 0.5 52
i5 0 8.4 0 0.42 "cello.ats" 53 0.25 0.52973154717965 53
i5 0 8.4 0 0.42 "cello.ats" 54 0.25 0.74915353843834 54
i5 0 8.4 0 0.42 "cello.ats" 55 0.25 1.7817974362807 55
i5 0 8.4 0 0.42 "cello.ats" 56 0.25 0.5 56
i5 0 8.4 0 0.42 "cello.ats" 57 0.25 1.4142135623731 57
i5 0 8.4 0 0.42 "cello.ats" 58 0.25 1.0 58
i5 0 8.4 0 0.42 "cello.ats" 59 0.25 0.56123102415469 59
i5 0 8.4 0 0.42 "cello.ats" 60 0.25 0.74915353843834 60
i5 0 8.4 0 0.42 "cello.ats" 61 0.25 0.7937005259841 61
i5 0 8.4 0 0.42 "cello.ats" 62 0.25 0.94387431268169 62
i5 0 8.4 0 0.42 "cello.ats" 63 0.25 1.6817928305074 63
i5 0 8.4 0 0.42 "cello.ats" 64 0.25 1.8877486253634 64
</CsScore>
</CsoundSynthesizer>