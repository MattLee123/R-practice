dir.create("C:/work/rsou/test/hello")
getwd()

?plot
RSiteSearch("plot")

history()            
savehistory(file = "history")
loadhistory("history")

#프로그램 파일 실행
source("history")
sink("history", append = T)

pdf("a_out.pdf")
plot(rnorm(100,0,1), type = "l")
dev.off()

list.files()
list.files(recursive = T, all.files = T)

a <- c(1,2,3)
names(a) <- c('a', 'b', 'c')
a
a['b']

faca <- factor(a, levels = c(3,2,1))
faca

a <- 11:20
a

N = 10
dtfm <- data.frame(dosage = numeric(N), lab = character(N), response = numeric(N))
dtfm
character(N)
numeric(N)

iris

# Species == virginica인 행의 Sepal.Length 조회 -> 다양한 방식으로 가능
iris[grep("virginica", iris$Species, ignore.case = T), "Sepal.Length"]
iris[which(iris$Species == "virginica"),"Sepal.Length"]
subset(iris, select = Sepal.Length, Species == "virginica")

str(data())
is(data())
data()[[3]]

iris
subset(iris, select = Sepal.Length)
subset(iris, select = Sepal.Length, subset = Petal.Length < 4)
sapply(iris$Sepal.Length)

apply(iris$Sepal.Length, log)
?sapply
?apply

apply(iris, 2, sum)
x <- cbind(x1 = 3, x2 = c(4:1, 2:5))
x
apply(x, 1, mean) #행별 평균
apply(x, 2, mean) #열별 평균
