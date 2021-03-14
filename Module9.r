library(ggplot2)
carprice <- read.csv("carprice.csv")

ggplot(carprice, aes(x=Price, y=gpm100, color=Type))+
  geom_jitter()+
  labs(title = "Lighter, cheaper cars tend to use less fuel",y="Gallons Per Mile (Lower is better)")

ggplot(carprice, aes(Type))+
  geom_bar()+
  labs(title = "Car types by popularity")

ggplot(carprice, aes(x=MPG.city,y=MPG.highway,color=Price))+
  geom_jitter()+
  labs(title = "City and Highway MPG",x="City MPG",y="Highway MPG")
