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
exam
