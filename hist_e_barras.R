
par(mfrow = c(2,2))  

par(mfrow = c(1,1))  
# Criando o histograma com intervalos de 10 em 10 no eixo Y
hist(sarco$Idade,
     main = "Histograma de Idade (10 em 10)",
     xlab = "Idade",
     ylab = "Frequência",
     breaks = seq(20, 
                  max(sarco$Idade, na.rm = TRUE), by = 10),
     ylim = c(0, ceiling(max(table(cut(sarco$Idade, breaks = seq(0, max(sarco$Idade), by = 10)
                                       )))/10)*10))
## Funciona corretamente


table(cut(sarco$Idade, breaks = seq(20, 70, by = 20)))

#
hist(sarco$Idade,
     main = "Histograma de Idade (20 em 20)",
     xlab = "Idade",
     ylab = "Frequência",
     breaks = 3, # Intervalos de 20 em 20
     xlim = c(20,80),
     ylim = c(0, 70),
     border = "black") # Borda opcional para barras


#table(cut(sarco$Idade, breaks = seq(0, max(sarco$Idade, na.rm = TRUE),  by = 20)))

barplot(tabela_contagens,
        main = "Faixas Etárias",
        xlab = "Faixa Etária",
        ylab = "Frequência",
        col = "skyblue",
        border = "black",
        ylim = c(0, max(tabela_contagens) + 1)
)

tabela_contagens2 = sort(table(sarco$FaixaEtaria2))

barplot(tabela_contagens2,
        main = "Faixas Etárias",
        xlab = "Faixa Etária",
        ylab = "Frequência",
        col = "skyblue",
        border = "black",
        ylim = c(0, max(tabela_contagens2) + 1)
)



ggplot(sarco) +
  aes(x = FaixaEtaria3) +
  geom_bar(fill = "skyblue", color = "black") +
  geom_text(stat = "count", aes(label = ..count..), vjust = -0.5, size = 5) +
  labs(x = "Faixa Etária", y = "Frequência", 
       title = "Distribuição por Faixa Etária") +
  theme_bw() +
  theme(axis.text.y = element_text(size = 14L), 
        axis.text.x = element_text(size = 14L), 
        legend.text = element_text(size = 14L), 
        legend.title = element_text(size = 14L))

