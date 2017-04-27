library(raster)

datdir <- 'data'
dir.create(datdir, showWarnings = FALSE)
adm <- raster::getData("GADM", country = "MEX",
                       level = 2, path = datdir)
plot(adm[adm$NAME_1 == "Chihuahua",])

chih <- adm[adm$NAME_1 == "Chihuahua",]
plot(chih, bg = "forestgreen", axes=T)
plot(chih), lwd = 10, border = "floralwhite", add=T)
plot(chih, col = "red2", add = T)
mtext(side = 3, line = 1, "State of Chihuahua, Mexico", cex = 2)
mtext(side = 1, "Longitude", line = 2.5, cex=1.1)
mtext(side = 2, "Latitude", line = 2.5, cex=1.1)
grid()
box()
invisible(text(getSpPPolygonsLabptSlots(chih),
               labels = as.character(chih$ID_2), cex = .5, col = "floralwhite", font = 3))