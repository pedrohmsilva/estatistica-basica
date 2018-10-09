# Instalando pacote
# install.packages("qcc")

library(readxl)
library(qcc)

# Lendo os dados da planilha
df <- read_excel("dados/exercicio6.xls")

# Construindo o diagrama de Pareto
png("graficos/exercicio6.png", width = 600, height = 480)
pareto.chart(
  df$`Nº pessoas`,
  names = df$Qualidade,
  ylab = "Frequência",
  ylab2 = "Porcentagem cumulativa",
  main = "Diagrama de Pareto"
)
dev.off()

