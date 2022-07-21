heart.data <- read.csv("~/heart.data.csv")
View(heart.data)
cor(heart.data$biking, heart.data$smoking)
plot(heart.data$biking, heart.data$heart.disease)
plot(heart.data$smoking, heart.data$heart.disease)
hist(heart.data$heart.disease)
heart.disease.lm<-lm(heart.disease ~ biking + smoking, data=heart.data)
summary(heart.disease.lm)
new.data<-data.frame(biking=c(56,78,90,21,20,45), smoking=c(42,32,12,33,24,21))
predict(heart.disease.lm, newdata = new.data)