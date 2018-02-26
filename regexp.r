# Replacing sub/gsub

t <- c('aba', 'aabbaa', 'AAbcda') 
sub("a+", '', t, ignore.case = T) # only first with ignore case: "ba"   "bbaa" "bcda"
gsub("a+", '', t, ignore.case = T) # drop all 'a': "b"   "bb"  "bcd"

gsub("(a+)", 'p\\1p', t, ignore.case = T) # "papbpap"    "paapbbpaap" "pAApbcdpap"
# only 9 groups supported: \1 - \9
# extra flags: \U, \L, \E (uppercase, lowercase, without any change)
gsub("(a+)", 'p\\U\\1p', t, ignore.case = T) # "pUapbpUap"    "pUaapbbpUaap" "pUAApbcdpUap"


# Regex Matches grep/grepl/regexpr/gregexpr/regmatches

grep('d+', t, perl = T, value = T) # "AAbcda"
grep('d+', t, perl = T, value = F) # 3 (index)
grepl('d+', t, perl = T) # FALSE FALSE  TRUE
