library(readxl)

# Lendo os dados da planilha
df <- read_excel("dados/exercicio8.xlsx")

# Concstruindo a tabela de distribuição de frequências
tabela <- table(df)

# Construindo o histograma
png("graficos/exercicio8.png", width = 480, height = 480)
hist(df$`Altura dos pacientes`, ylab = "Frequência", xlab = "Altura", main = "Histograma da altura dos pacientes")
dev.off()
