

fileName <- "test_file"

#Create file connection
con <- file(fileName, "r")

#Read all words
d <- scan(con, character(0))

# Close connection
close(con)

#Read bad words
con <- file("bad_words", "r")
bad <- scan(con, character(0))
close(con)
##

d <- lapply(d, toupper)
bad <- lapply(bad, toupper)

# create out vector of words
words <- c()
numbers <- c()
puncts <- c()

for (i in (1:100)){
  
  element <- d[[i]]
  # exstract word 
  word <- gsub("[^A-Z]+", "", element)
  
  # filter out bad words
  good <-1
  if (word %in% bad) {good <-0}
  if ((word > 0)&good){words <- c(words, word)}
  
  # extract numbers
  number <- gsub("[^0-9]+", "", element)
  if (number > 0){numbers <- c(numbers, number)}
  
  # extract punctuation
  pun <- gsub("[^[:punct:]]", "", element)
  print(element)
  if (nchar(pun) > 0){puncts <- c(puncts, pun)}
  
  
  
}

# exploration of frequencies
#tab <- table(words[which(nchar(words)>10)])
#df <- as.data.frame(tab)
#names(df) <- c("word","times")
#df$rank <- rank(-df$times, ties.method="min")
#df <- df[order(df$rank,decreasing = F),]
#print(df[(1:30),])