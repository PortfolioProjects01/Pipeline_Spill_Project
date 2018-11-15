library(rgdal)
library(maps)
library(readxl)

setwd("C:/Users/kenne/Documents")

Oil_Pipelines = readOGR("PipelineShapefiles/Oil_PipelineShapefiles/PetroleumProduct_Pipelines_US_201801.shp")

plot(Oil_Pipelines)

Oil_Pipelines_df <- as.data.frame(Oil_Pipelines)

View(Oil_Pipelines_df)

Natural_Pipelines = readOGR("PipelineShapefiles/Naturalgas_PipelineShapefiles/NaturalGas_Pipelines_US_201804.shp")

plot(Natural_Pipelines)

Natural_Pipelines_df <- as.data.frame(Natural_Pipelines)

View(Natural_Pipelines_df)

Oil_Pipeline_Incidents_df <- read_excel(path = "PipelineIncidentData/PHMSA_Pipeline_Safety_Flagged_Incidents/hl2010toPresent.xlsx", sheet = "hl2010toPresent")

View(Oil_Pipeline_Incidents)

map('state', fill = TRUE, col = 'gray')
