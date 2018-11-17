library(rgdal)
library(maps)
library(readxl)
library(dplyr)
library(MASS)

setwd("C:/Users/kenne/Documents")

Oil_Pipelines = readOGR("PipelineShapefiles/Oil_PipelineShapefiles/Petroleum_Pipelines/PetroleumProduct_Pipelines_US_201801.shp")

#plot(Oil_Pipelines)

Oil_Pipelines_df <- as.data.frame(Oil_Pipelines)

#View(Oil_Pipelines_df)

Natural_Pipelines = readOGR("PipelineShapefiles/Naturalgas_PipelineShapefiles/NaturalGas_Pipelines/NaturalGas_Pipelines_US_201804.shp")

#plot(Natural_Pipelines)

Natural_Pipelines_df <- as.data.frame(Natural_Pipelines)

#View(Natural_Pipelines_df)

Oil_Pipeline_Incidents_df <- read_excel(path = "PipelineIncidentData/PHMSA_Pipeline_Safety_Flagged_Incidents/hl2010toPresent.xlsx", sheet = "hl2010toPresent")

View(Oil_Pipeline_Incidents_df)

Oil_Ports = readOGR("PipelineShapefiles/Oil_PipelineShapefiles/Petroleum_Ports/Petroleum_Ports.shp")

plot(Oil_Ports)

Oil_Ports_df <- as.data.frame(Oil_Ports)

View(Oil_Ports_df)

companies<- Oil_Pipeline_Incidents_df$NAME

companies_unique <- unique(companies)

View(companies_unique)

company.freq = table(companies)

View(company.freq)





map('state', fill = TRUE, col = 'gray')
