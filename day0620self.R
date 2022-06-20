install.packages("ggplot2")
library(ggplot2)

economics<-ggplot2::economics
str(economics)
economics

getwd()

read.csv("student.csv")

install.packages("readxl")
library(readxl)
library(readxl)
install.packages("readxl")
library(readxl)
read_excl("student_xl.xlsx")
read_excel("student_xl.xlsx")

read.csv("student1.csv")
read.csv("student1.csv", skip=1)

read_excel("student1_xl.xlsx",sheet=1)
read_excel("student1_xl.xlsx", sheet=2)

read.table("student1.txt")
read.table("student1.txt")
read.table("student2.txt",sep=";")

read.table("student3.txt",sep=",")
getwd()

read.csv("exam.csv")
