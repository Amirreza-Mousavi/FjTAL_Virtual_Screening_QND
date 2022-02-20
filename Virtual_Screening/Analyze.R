library(stringr)
library(dplyr)
x=readLines("res.txt")
id=x[seq(15,1103,34)]
scores= x[seq(31,1119,34)]
scores=substr(scores,14,17)
scores=as.numeric(scores)
id=str_remove_all(id,"Output will be ")
df=data.frame(id,scores)

print(dplyr::arrange(df,scores)) ###Results
write.csv(dplyr::arrange(df,scores),"results.csv")
