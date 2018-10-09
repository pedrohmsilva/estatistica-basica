library(readxl)

# Constuindo os dados
df <- data.frame("NumeroFilhos" = c(0, 1, 2, 3, 4, 5, "Mais de 5"), "Familias" = c(17, 20, 28, 19, 7, 4, 5))
write.csv(df, file = "dados/exercicio3.csv")

# Calculando
mediana <- median(df$Familias)
calcular_moda <- function(vetor) {
  uniq <- unique(vetor)
  uniq[which.max(tabulate(match(vetor, uniq)))]
}
moda <- calcular_moda(df$Familias)

# Construindo matriz para o gráfico
df2 <- c("Moda" = moda, "Mediana" = mediana)

# Construindo o gráfico
png("graficos/exercicio3.png", width = 480, height = 480)
barplot(df2, main="Moda e Mediana")
dev.off()
