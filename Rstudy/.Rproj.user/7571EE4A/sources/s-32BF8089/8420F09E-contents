# matrix 실습
x1 <-matrix(1:8, nrow = 2) #행의 갯수는 2개이다.
x1
x1<-x1*3
x1

sum(x1); min(x1);max(x1);mean(x1)

x2 <-matrix(1:8, nrow =3) #행의 갯수가 모자랄 경우 반복이 된다.
x2
#에러는 수행 조차 안하지만 경고는 수행은 하고 알리게된다.

(chars <- letters[1:10])
#이렇게 ()로 묶어주면 대입과 출력을 동시에 해준다.

mat1 <-matrix(chars) # 아무것도 안주면 1열의 매트릭스가 생성된다.
mat1; dim(mat1) # dim이라는 함수를 이용하면 몇행 몇열인지 바로 알 수 있다.
matrix(chars, nrow=1)
matrix(chars, nrow=5)
matrix(chars, nrow=5, byrow=T)
matrix(chars, ncol=5)
matrix(chars, ncol=5, byrow=T)
matrix(chars, nrow=3, ncol=5)
matrix(chars, nrow=3)


vec1 <- c(1,2,3)
vec2 <- c(4,5,6)
vec3 <- c(7,8,9)
mat1 <- rbind(vec1,vec2,vec3); mat1
mat2 <- cbind(vec1,vec2,vec3); mat2
mat1[1,1]
mat1[2,];mat1[,3]
mat1[1,1,drop=F] 
# drop 이라는 속성을 사용하면 matrix 구조를 유지하여 가져온다.
# drop의 default 값은 TRUE이다.
mat1[2,,drop=F];mat1[,3,drop=F]

rownames(mat1) <- NULL
colnames(mat2) <- NULL
mat1;mat2
rownames(mat1) <- c("row1","row2","row3")
colnames(mat1) <- c("col1","col2","col3")
mat1

ls()
mean(x2)
sum(x2)
min(x2)
max(x2)
summary(x2)

mean(x2[2,])
sum(x2[2,])
rowSums(x2); colSums(x2)
#행마다 합계, 열마다 합계

# apply 함수가 이를 대체 할 수 있다.(적용해라 이런 뜻)
apply(x2, 1, sum); apply(x2, 2, sum)
#여기서 1은 행단위, 2는 열단위로 수행하라는 말이다.

?apply
apply(x2, 1, max) #x2 matrix의 행단위로의 최댓값
apply(x2, 1, min) #x2 matrix의 행단위로의 최솟값
apply(x2, 1, mean) #x2 matrix의 행단위로의 평균값

apply(x2, 2, max) #x2 matrix의 열단위로의 최댓값
apply(x2, 2, min) #x2 matrix의 열단위로의 최솟값
apply(x2, 2, mean) #x2 matrix의 열단위로의 평균값

#Array 실습
a1 <- array(1:30, dim=c(2,3,5))
#2행 3열 5층짜리 배열을 만들어라 (1부터 30까지)
a1

a1[1,3,4];a1[1,3,4, drop=F]
a1[,,3]
a1[,2,]
a1[1,,]