library(ggpubr)
library(ggplot2)
library(tidyverse)
library(ggtext)
library(gridExtra)
library("readxl")

folder <- dirname(rstudioapi::getSourceEditorContext()$path)

filename = "constellation_information.csv"
data = read.csv(file.path(folder, '..', 'data', 'raw', filename))

data = data[(data$Properties != 'Launch Vehicle'),]

create_table <- function(starting_name, constellation) {
  df = data[(data$Constellation == constellation),]
  df$Constellation = NULL
  rownames(df) = df$Properties
  df$Properties = NULL
  filename = paste(starting_name, tolower(constellation), '_table.png')
  folder_tables = file.path(folder, 'figures', 'tables')
  if (!dir.exists(folder_tables)) {dir.create(folder_tables)}
  path = file.path(folder_tables, filename)
  dir.create(file.path(folder, 'figures'), showWarnings = FALSE)
  png(
    path,
    units = "in",
    width = 5,
    height = 4,
    res = 480
  )
  print(grid.table(df))
  dev.off()
}

create_table('aa_','Starlink')
create_table('bb_','OneWeb')
create_table('cc_','Kuiper')
create_table('cc_','Guowang')
create_table('cc_','Iridium')
create_table('cc_','Globalstar')
create_table('cc_','Orbcomm')
create_table('cc_','Lightspeed')

rct = read.csv(file.path(folder, '..', 'data', 'raw', "rockets_table.csv"),
               row.names = 1)
new_names <- c('Falcon-9', 'Falcon-Heavy', 'Starship', 'Soyuz-FG', 'Ariane-5', 'Ariane-62')
colnames(rct) <- new_names

filename = 'dd_rockets_table.png'
folder_tables = file.path(folder, 'figures', 'tables')
path = file.path(folder_tables, filename)
dir.create(file.path(folder, 'figures'), showWarnings = FALSE)
png(
  path,
  units = "in",
  width = 15,
  height = 3,
  res = 480
)
table_grob <- tableGrob(rct)
n_col <- ncol(rct)
for (i in seq_len(n_col)) {
  table_grob$widths[i] <- unit(0.13, "npc")
}
grid.newpage()
grid.draw(table_grob)
dev.off()

rct = read.csv(file.path(folder, '..', 'data', 'raw', "rockets_table_2.csv"),
               row.names = 1)
new_names <- c('Ariane-64', 'LVM3', 'Vulcan Centaur', 'New Glenn', 'Long March-5', 'Atlas V')
colnames(rct) <- new_names

filename = 'dd_rockets_table_2.png'
folder_tables = file.path(folder, 'figures', 'tables')
path = file.path(folder_tables, filename)
dir.create(file.path(folder, 'figures'), showWarnings = FALSE)
png(
  path,
  units = "in",
  width = 15,
  height = 3,
  res = 480
)
table_grob <- tableGrob(rct)
n_col <- ncol(rct)
for (i in seq_len(n_col)) {
  table_grob$widths[i] <- unit(0.13, "npc")
}
grid.newpage()
grid.draw(table_grob)
dev.off()
