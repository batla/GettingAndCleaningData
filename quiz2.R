# Q1.

#Q2
install.packages("sqldf")
library("sqldf")
acs <- read.csv("getdata-data-ss06pid.csv")
sqldf("select pwgtp1 from acs where AGEP < 50")

# Q3
sqldf("select distinct AGEP from acs")$AGEP == unique(acs$AGEP)

# Q4
download.file("http://biostat.jhsph.edu/~jleek/contact.html", "contact.html", method="curl")
htmlData <- readLines("contact.html")
countLines <- nchar(c(htmlData[10], htmlData[20], htmlData[30], htmlData[100]))
# [1] 45 31  7 25

#Q5
# Read a table of fixed width formatted data into a data.frame.
# Skip first four lines and manually enter col widths
sstData <- read.fwf("getdata-wksst8110.for", widths=c(10,5,4,4,5,4), skip=4)
sumCol4 <- sum(sstData$V6)
# [1] 32426.7