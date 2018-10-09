library(readxl)

# Lendo os dados da planilha
df <- read_excel("dados/exercicio9.xls")

# Construindo as classes
breaks <- seq(4, 24, 2)

# Construindo a tabela de frequências
tabela <- table(cut(df$Salários, breaks=breaks, right=FALSE))

# Construindo histograma da tabela de freqências "tabela"
png("graficos/exercicio9.png", width = 480, height = 480)
hist(tabela, main = "Histograma de frequências")
dev.off()
