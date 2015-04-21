
# read text in words
fileName <- "test_file"
con <- file(fileName, "r")
d <- scan(con, character(0))
close(con)

d <- lapply(d, toupper)

words <- c()

for (i in (1:100000)){
  element <- d[[i]]
  word <- gsub("[^A-Z]+", "", element)
  words <- c(words, word)
}

#top100
tab <- table(words)
df <- as.data.frame(tab)
names(df) <- c("word","times")
df$rank <- rank(-df$times, ties.method="min")
df <- df[order(df$rank,decreasing = F),]
top100 <- df[(1:100),]


# exploration of frequencies
#tab <- table(words[which(nchar(words)>10)])
#df <- as.data.frame(tab)
#names(df) <- c("word","times")
#df$rank <- rank(-df$times, ties.method="min")
#df <- df[order(df$rank,decreasing = F),]
#print(df[(1:30),])