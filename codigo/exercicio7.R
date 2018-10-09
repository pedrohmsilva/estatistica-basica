library(readxl)
library(ggplot2)

# Lendo os dados da planilha
df <- read_excel("dados/exercicio7.xls")

# Gerando o gráfico
png("graficos/exercicio7.png", width = 480, height = 480)
ggplot(df, aes(x=`Áreas`, y=Atendimento)) + geom_bar(stat = "identity")
dev.off()