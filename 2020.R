import delimited "/Users/xichen85/Downloads/12356336/gene_likert_aivelo2020.csv", clear 
drop school date course_bi1 course_bi2 course_bi3 course_bi4 course_bi5 course_oth course_tot gender age teacher_app textbook
drop v40
rename form id
foreach i of numlist 1/25 {
  rename X`i' Q`i'
foreach i of numlist 1/25 {
    rename x`i' Q`i'
}
reshape long Q, i(id) j(resp)
rename resp item
rename Q resp
save "/Users/xichen85/Desktop/Gene scale_Aivelo 2020.dta"
export delimited using /Users/xichen85/Desktop/Untitled.csv
