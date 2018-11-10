library(rgdal)
library(maps)

setwd("C:/Users/kenne/Documents")

Oil_Pipelines = readOGR("PipelineShapefiles/Oil_PipelineShapefiles/PetroleumProduct_Pipelines_US_201801.shp")

plot(Oil_Pipelines)

Oil_Pipelines <- as.data.frame(Pipelines)

View(Oil_Pipelines)

Natural_Pipelines = readOGR("PipelineShapefiles/Naturalgas_PipelineShapefiles/NaturalGas_Pipelines_US_201804.shp")

plot(Natural_Pipelines)

Natural_Pipelines <- as.data.frame(Natural_Pipelines)

View(Natural_Pipelines)

map('state', fill = TRUE, col = 'gray')
