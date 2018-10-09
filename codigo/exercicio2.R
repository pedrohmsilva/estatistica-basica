library(readxl)

df <- read_excel("dados/exercicio2.xls")
casas <- df$Casas

# Tabela de frequência
tabela <- table(df)

# Medidas de posição
media <- mean(casas)
mediana <- median(casas)
moda <- as.numeric(names(which(tabela == max(tabela))))

# Medidas de dispersão
amplitude <- diff(range(casas))
variancia <- var(casas)
desvio_padrao <- sd(casas)

# Construindo os gráficos
png("graficos/exercicio2.png", width = 480, height = 480)
hist(casas, main = "Histograma de frequências", xlab = "Número de casas", ylab = "Frequência")
dev.off()
