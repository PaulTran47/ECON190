clear
cd "\\path\to\data"
use compustat2
rename fyear year
rename naics naicscode
merge m:1 naicscode year using censusnaics
drop if year<1997
collapse (median) gp ni act at emp percentofvalueadded1 percentofvalueadded804 percentofvalueadded808 percentofvalueadded820 percentofvalueadded850 revperc1 revperc804 revperc808 revperc820 revperc850, by(year naicscode)
sort naicscode year
bysort naicscode: gen L5ni=ni[_n-5]
bysort naicscode: gen L5gp=gp[_n-5]

gen dig=substr(naics, 1,3)
destring dig, replace force
reg gp at revperc850 L5gp i.year i.dig, robust
