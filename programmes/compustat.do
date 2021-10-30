clear
cd "\\path\to\data"
use compustat2
destring gvkey, replace
gen dig=substr(naics, 1,3)
destring dig, replace force
capture program drop lag
program define lag
args lagvar lagtime
sort gvkey fyear
bysort gvkey: gen l_`lagvar'`lagtime'=`lagvar'[_n-`lagtime']
end
lag gp 1
lag gp 2
lag gp 3
lag ni 1
lag ni 2
lag ni 3
lag capx 1
lag capx 2
lag capx 3
lag rdip 1
lag rdip 2
lag rdip 3
lag xrd 1
lag xrd 2
lag xrd 3
bysort gvkey fyear: gen b=_n
drop if b>1
tsset fyear gvkey
foreach v of varlist ni capx rdip xrd gp l_gp1 l_gp2 l_gp3 l_capx1 l_capx2 l_capx3 l_rdip1 l_rdip2 l_rdip3 l_xrd1 l_xrd2 l_xrd3 l_ni1 l_ni2 l_ni3{
gen `v'_logged=log(`v')
}

newey capx gp at l_capx1 i.dig i.fyear, lag(1) force
*newey xrd_logged ni_logged emp i.dig i.fyear l_xrd1_logged, lag(1) force
