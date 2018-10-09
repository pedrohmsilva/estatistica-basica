library(readxl)

# Lendo os dados
df <- read_excel("dados/exercicio4.xls")

# Distribuiçao de frequências
freq_table <- table(df)
freq_table_per <- prop.table(df)

# Construindo histograma
png(filename = "graficos/exercicio4.png", width = 480, height = 480)
hist(df$Salários, main = "Exercício 4", labels = TRUE, ylab = "Frequência", xlab = "Salários")
dev.off()