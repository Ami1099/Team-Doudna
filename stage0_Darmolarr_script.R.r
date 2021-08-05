var1<- "Salami Habeeb"

var2<- "damolamillz@@gmail.com"

var3<- "@Darmolarr"

var4<- "Microbial Genomics"

var5<- "@Darmolarr1"


var6<- "@Darmolarr"
var7<- "@Darmolar1"


HD <- function(str1, str2){
  
  str1 <- as.character(str1)
  str2 <- as.character(str2)
  
  length.str1 <- nchar(str1)
  length.str2 <- nchar(str2)
  
  string.temp1 <- c()
  for (i in 1:length.str1){
    string.temp1[i] = substr(str1, start=i, stop=i)
  }
  string.temp2 <- c()
  for (i in 1:length.str2){
    string.temp2[i] = substr(str2, start=i, stop=i)
  }
  return(sum(string.temp1 != string.temp2))
 }

hamming <- HD(var6,var7)

# sum(as.vector(var6) != as.vector(var7))

varl<- c(var1,var2,var3,var4,var5,hamming)

cat(paste(varl, collapse = ','))