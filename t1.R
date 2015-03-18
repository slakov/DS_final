

fileName <- "test_file"


#Create file connection
con <- file(fileName, "r")
#Read file line by line
#d <- readLines(con)
d <- scan(con, character(0))
# Close connection
close(con)

#Read bad words
con <- file("bad_words", "r")
bad <- scan(con, character(0))
close(con)


l <- lapply(d, toupper)

#Split by space
#wordsSplit <- strsplit(d, split=" ")

#words <- grep("[a-z]", wordsSplit, value=T)
