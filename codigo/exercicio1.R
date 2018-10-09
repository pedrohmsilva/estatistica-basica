library(readxl)
library(ggplot2)

# Lendo os dados da planilha
df <- read_excel("dados/exercicio1.xls")

# Calculando média
media <- mean(df$`Taxas de juros`)

# Calculando mediana
mediana <- median(df$`Taxas de juros`)

# Calculando variância
var <- var(df$`Taxas de juros`)

# Calculando desvio padrão
desvio_padrao <- sd(df$`Taxas de juros`)

# Calculando valor mínimo
valor_minimo <- min(df$`Taxas de juros`)

# Calculando valor máximo
valor_maximo <- max(df$`Taxas de juros`)

# Calculando quartil
q1 <- unname(quantile(df$`Taxas de juros`))[[1]]
q3 <- unname(quantile(df$`Taxas de juros`))[[3]]

# Construindo gráficos
png("graficos/exercicio1.png", width = 480, height = 480)
boxplot(quantile(df$`Taxas de juros`), main="Boxplot")
dev.off()
