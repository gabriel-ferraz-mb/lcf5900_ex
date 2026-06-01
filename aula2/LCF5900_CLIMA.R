# ---------------------------------------------------------------------
# LCF5900_CLIMA.R
# Author:  Luiz Carlos Estraviz Rodriguez
# Updated: 09/Abr/2025 (backup)
# https://posit.cloud/content/10144185 (private, Google access enabled)
# ---------------------------------------------------------------------
rm(list=ls(all=TRUE))                                  # Memory cleanup
gc()

# Define working directory
setwd("C:/Projetos/PPG - RF/LCF5900/aula2")

# Load packages
if(!require(tidyverse))
  install.packages("tidyverse")
library(tidyverse)

if(!require(rio))
  install.packages("rio")
library(rio); install_formats()

if(!require(gganimate))
  install.packages("gganimate")
library(gganimate)

if(!require(gifski))
  install.packages("gifski")
library(gifski)

if(!require(av))
  install.packages("av")
library(av)

# Define github URL where climate data from Piracicaba is stored
# OBS: copy the full github URL address and replace "tree" with "blob")
url_1 <- "https://github.com/FlorestaR/dados/blob/main/X_PIRACLIM/"
xls_2 <- "DadosClima_Piracicaba.xlsx"
prm_3 <- "?raw=true"
gitFile <- paste0(url_1, xls_2,prm_3)

# Imports the Excel spreadsheet from github using the rio package,
# making sure the first 8 columns become "factors" and the rest of
# the columns remain numeric. Then converts the downloaded data
# into a tibble (dataframe)
sheetName <- "DadosClima_Piracicaba"
my_col_types <- c(rep("text", 8), rep("numeric", 16))
df <- import(gitFile, which = sheetName, col_types = my_col_types)
df <- df %>% mutate(across(1:8, factor)) %>% tibble()
# Show column names and structure of the data.daframe
colnames(df)
str(df)

# Creation of a simple histogram for a subgroup of years
t_max <- df %>%
  filter(Ano %in% c(2022, 2023, 2024)) %>%
  pull(TMAX)
hist (t_max, 
      main = "Temperaturas 2022-2024 - Piracicaba-SP", 
      xlab = "Temperaturas", ylab = "Freq.", 
      col = "grey",
      border = "black",
      freq =F,
      breaks = c(0,5,10,15,20,25,30,35,40,45), 
      right = T, 
      labels = F)



# Creation of a new dataframe called new_df without NAs
# and filtered by TMED<50
new_df <- df %>%
  select(Ano, Mes,ClassNino, TMED, TMIN, TMAX, Chuva) %>%
  drop_na() %>%
# Convert TMED from factor to numeric safely
  mutate(TMED = as.numeric(as.character(TMED))) %>% 
  filter(TMED <50)
str(new_df)

# Summarize a few statistics for new_df
new_df %>% summarise(m_TMED     = mean(TMED),
                     m_TMIN     = mean(TMIN),
                     m_TMAX     = mean(TMAX),
                     m_Chuva    = mean(Chuva))

# # Calculate the average TMED per month per year
# medMes <- new_df %>%
#   group_by(Ano, Mes) %>%
#   summarise(tmedMes = mean(TMED, na.rm = TRUE), .groups = "drop")
# 
# # Create one graph per year with monthly average TMAX 
# p <- ggplot(medMes, aes(x = Mes, y = tmedMes)) +
#   geom_point() +
#   labs(title = "Ano: {frame_time}") +
#   transition_time(as.numeric(as.character(Ano))) +
#   ease_aes("linear") +
#   enter_fade() +
#   exit_fade()
# 
# # Create an animated GIF that shows a sequence of annual averages
# animate(p, width = 750, height = 450)
# anim_save("grafGIF.gif", animation = p)
# 
# # Create an MP4 movie that shows the sequence of annual averages
# animate(p, renderer = ffmpeg_renderer(), width = 800, height = 450)
# anim_save("animGraf.mp4")


# 1. Calcular a média mensal de todas as temperaturas e da Chuva por Ano
medMes <- new_df %>%
  group_by(Ano, Mes, ClassNino) %>%
  summarise(
    tmedMes  = mean(TMED, na.rm = TRUE),
    tminMes  = mean(TMIN, na.rm = TRUE),
    tmaxMes  = mean(TMAX, na.rm = TRUE),
    chuvaMes = sum(Chuva, na.rm = TRUE),
    .groups = "drop"
  )

# Garantir que o Mês seja tratado de forma contínua/numérica para as linhas conectarem corretamente
medMes$Mes <- as.numeric(as.character(medMes$Mes))

# 2. Definir o fator de escala para o segundo eixo (Chuva)
# Como a chuva costuma ter valores numericamente maiores, ajuste este fator se necessário.
# Exemplo: se as temperaturas vão até 40°C e a chuva até 200mm, o fator 5 funciona bem (40 * 5 = 200).
fator_escala <- 10 

# 3. Criar o gráfico com as 3 temperaturas (esquerda) e a chuva (direita)
p <- ggplot(medMes, aes(x = Mes)) +
  # --- TEMPERATURA MÉDIA (Linha Sólida) ---
  geom_line(aes(y = tmedMes, color = "TMED"), size = 1) +
  geom_point(aes(y = tmedMes, color = "TMED"), size = 1.5) +
  
  # --- TEMPERATURA MÍNIMA (Linha Tracejada) ---
  geom_line(aes(y = tminMes, color = "TMIN"), size = 0.8, linetype = "dashed") +
  geom_point(aes(y = tminMes, color = "TMIN"), size = 1.5) +
  
  # --- TEMPERATURA MÁXIMA (Linha Tracejada) ---
  geom_line(aes(y = tmaxMes, color = "TMAX"), size = 0.8, linetype = "dashed") +
  geom_point(aes(y = tmaxMes, color = "TMAX"), size = 1.5) +
  
  # --- CHUVA (Eixo Direito - Escala Modificada em Barras) ---
  # alpha = 0.5 deixa a barra semi-transparente para não cobrir totalmente as linhas de temperatura
  geom_col(aes(y = chuvaMes / fator_escala, fill = "Chuva"), alpha = 0.5, width = 0.6) +
  
  ## Configuração dos Eixos Y
  scale_y_continuous(
    name = "Temperatura (°C)",
    limits = c(0, 45), # Garante o limite de 45 que definimos antes
    sec.axis = sec_axis(~ . * fator_escala, name = "Chuva (mm)")
  ) +
  
  # Cores para as linhas de Temperatura
  scale_color_manual(
    name = "Temperaturas",
    values = c("TMED" = "#E66101", "TMIN" = "#FDB863", "TMAX" = "#D7191C")
  ) +
  
  # Cor para a barra de Chuva
  scale_fill_manual(
    name = "Pluviometria",
    values = c("Chuva" = "#2B8CBE") # Azul para a barra
  ) +
  
  # # Escala de Cores Personalizada para a Legenda
  # scale_color_manual(
  #   name = "Variáveis",
  #   values = c(
  #     "TMED"  = "#E66101", # Laranja
  #     "TMIN"  = "#FDB863", # Laranja Claro
  #     "TMAX"  = "#D7191C", # Vermelho
  #     "Chuva" = "#2B8CBE"  # Azul
  #   )
  # ) +
  
  # Configurações de rótulos e marcações do eixo X (Meses de 1 a 12)
  scale_x_continuous(breaks = 1:12, labels = 1:12) +
  labs(
    title = "Evolução Meteorológica Mensal - Ano: {as.integer(frame_time)}",
    x = "Mês"
  ) +
  
  # Configurações da Animação temporal por Ano
  transition_time(as.numeric(as.character(Ano))) +
  ease_aes("linear") +
  enter_fade() +
  exit_fade()

# 4. Renderizar e salvar o GIF
anim_gif <- animate(p, width = 800, height = 500, res = 100)


anim_gif

###############################################################################

new_df$Ano <- as.numeric(as.character(new_df$Ano))

# 1. PROCESSAMENTO DOS DADOS EM DOIS PASSOS
df_climatologia <- new_df %>%
  filter(Ano > 1980) %>%
  # Passo A: Calcular o total acumulado de chuva e médias de temp para CADA mês/ano real
  group_by(Ano, Mes, ClassNino) %>%
  summarise(
    tmed_mes  = mean(TMED, na.rm = TRUE),
    tmin_mes  = mean(TMIN, na.rm = TRUE),
    tmax_mes  = mean(TMAX, na.rm = TRUE),
    chuva_mes = sum(Chuva, na.rm = TRUE), # Soma mensal
    .groups = "drop"
  ) %>%
  # Passo B: Tirar a média climatológica desses acumulados históricos
  group_by(Mes, ClassNino) %>%
  summarise(
    tmed  = mean(tmed_mes, na.rm = TRUE),
    tmin  = mean(tmin_mes, na.rm = TRUE),
    tmax  = mean(tmax_mes, na.rm = TRUE),
    chuva = mean(chuva_mes, na.rm = TRUE), # Média das somas mensais
    .groups = "drop"
  )

# Garantir que o mês seja numérico
df_climatologia$Mes <- as.numeric(as.character(df_climatologia$Mes))

# 2. DEFINIR O FATOR DE ESCALA
# Como a chuva agora é o acumulado mensal, os valores vão subir bastante (ex: de 0 a 300mm).
# Com a temperatura limitada em 35°C, um fator de escala de 10 permite que o eixo da chuva vá até 350mm.
fator_escala_estatico <- 10

# 3. CONSTRUÇÃO DO GRÁFICO
plot_estatico <- ggplot(df_climatologia, aes(x = Mes)) +
  
  # --- Faixa sombreada entre TMIN e TMAX (Preenchimento Térmico) ---
  geom_ribbon(aes(ymin = tmin, ymax = tmax, fill = "Amplitude TMIN/TMAX"), alpha = 0.15) +
  
  # --- Linha de Temperatura Média ---
  geom_line(aes(y = tmed, color = "Temperatura Média"), size = 1.2) +
  
  # --- Barras de Chuva ao fundo (Eixo Direito) ---
  geom_col(aes(y = chuva / fator_escala_estatico, fill = "Chuva (Média)"), 
           alpha = 0.3, width = 0.5, position = "identity") +
  
  # Divisão por Linhas/Colunas baseada no ClassNino para comparação direta
  facet_wrap(~ ClassNino, ncol = 1) + 
  
  # Configuração de Cores e Legendas
  scale_x_continuous(breaks = 1:12, labels = c("Jan","Fev","Mar","Abr","Mai","Jun","Jul","Ago","Set","Out","Nov","Dez")) +
  scale_color_manual(name = "Termometria", values = c("Temperatura Média" = "#D7191C")) +
  scale_fill_manual(name = "Pluviometria", values = c("Chuva (Média)" = "#2B8CBE", "Amplitude TMIN/TMAX" = "gray50")) +
  
  # Configuração ÚNICA dos Eixos Y Duplos (Temperatura máx: 35 | Chuva máx: 35 * 10 = 350mm)
  scale_y_continuous(
    name = "Temperatura (°C)",
    limits = c(0, 35), 
    sec.axis = sec_axis(~ . * fator_escala_estatico, name = "Chuva Mensal Média (mm)")
  ) +
  
  # Customização do Layout (Tema)
  theme_minimal() +
  labs(
    title = "Perfil Climatológico Mensal por Classificação de El Niño",
    subtitle = "Análise comparativa de Temperatura (°C) e Chuva Acumulada Média (mm)",
    x = "Meses do Ano",
    caption = "Dados Históricos Agrupados (Pós-1980)"
  ) +
  theme(
    legend.position = "bottom",
    strip.text = element_text(face = "bold", size = 12), 
    panel.grid.minor = element_blank()
  )

# Exibir o gráfico no RStudio
print(plot_estatico)
 