logical_vector<-c(TRUE,FALSE)
logical_vector

char_vector<-c("hi","hello")
char_vector

# 명목형 자료형 Factor
locaiton_vector <- c("서울", "인천", "부산")
factor_location_vector <- factor(locaiton_vector)
factor_location_vector

class(factor_location_vector)
help(factor)

# 순서형 자료형 Factor
temperature_factor <- c("기온높음", 
                        "기온보통", 
                        "기온낮음", 
                        "기온높음", 
                        "기온보통", 
                        "기온보통")

temperature_factor

factor_temperature_factor <- factor(temperature_factor, 
                                    ordered = TRUE, 
                                    levels  = c("기온보통", 
                                                "기온낮음", 
                                                "기온높음"))
factor_temperature_factor

##데이터 프레임
#엑셀 데이터
no=c(1,2,3,4,5)
sex=c("male","female","male","male","female")
korean=c(87,92,95,81,87)
exam=data.frame(no,sex,korean)
exam

exam$no
exam$sex
exam$no[1]
exam$sex[4]

#데이터 타입
class(exam$no)
class(exam$korean)
class(exam$sex)
#데이터 타입을 한방에 보는 것
str(exam)

no=c(1,2,3,4,5)
sex=c("male","female","male","male","female")
korean=c(87,92,95,81,87)
english=c(88,95,92,84,86)
math=c(82,93,90,80,88)
exam=data.frame(no,sex,korean,english,math)
exam

exam[2,3]
exam[2,"korean"]

exam[3,c(3,4)]
exam[c(4,5),c(4,5)]#앞은 학생번호 뒤는 점수

exam[3,] # 3번 학생의 모든 것을 알고 싶다.
exam[,4] #english 점수를 전부 알고 싶다.
exam[2:4,2:4]
exam[c(1:3,5),c(1:3,5)]
exam[-4,-4]
exam[-c(2,4),-c(4,5)]
exam$korean


#연습문제 1
student=c("A","B","C")
height=c(175,160,180)
weight=c(70,55,77)
df=data.frame(student,height,weight)
df
#연습문제 2
df[1,3]
df[3,2]
df[2,]
df[,2]
df[c(1,2),c(2,3)]

#연습문제3
sex=c("male","female","male")
df1=data.frame(sex,df)
df1
df1=data.frame(student,sex,height,weight)
df1

#연습문제 4
df1$student

#연습문제 5
class(df1$student)
class(df1$height)

#연습 문제 6
df2="Good"
list1<-list(df1,df2)
list1


#데이터 내보내기& 불러오기
no=c(1,2,3,4,5)
sex=c("male","female","male","male","female")
korean=c(87,92,95,81,87)
exam=data.frame(no, sex, korean)
exam

write.csv(x=exam, file="temp.csv") # 내보내기

#바탕화면에 dataset 폴더 생성, exam 객체 저장
write.csv(x=exam,file="temp.csv")

#데이터 불러오기
temp=read.csv("dataset/temp.csv")
temp2=read.csv("dataset2/temp.csv")