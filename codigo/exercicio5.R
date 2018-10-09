library(readxl)
library(ggplot2)

# Lendo os dados da planilha
df <- read_excel("dados/exercicio5.xls")

# Constuindo gráficos de barra
png("graficos/exercicio5.png", width = 480, height = 480)
ggplot(df, aes(x=Marcas, y=`Nº pessoas`)) + geom_bar(stat = "identity")
dev.off()
