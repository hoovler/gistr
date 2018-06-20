source("rhelp.R")

# NOTES
# 1. Latest infrared GOES satellite image, color, 50% size:
#    http://meteocentre.com/satellite/east_ir_50.gif
# 2. Same image, in animation loop:
#    http://meteocentre.com/satellite/anim/east_ir_50.1.gif
# 3. All 18 available images
#    http://meteocentre.com/satellite/anim/east_ir_50.[1:18].gif

urlPrefix <- "http://meteocentre.com/satellite/anim/east_ir_50."
urlSuffix <- ".gif"
urlArray <- paste0(urlPrefix, c(1:18), urlSuffix, sep="")

# download or load imageMagick wrapper package
instaload.package("magick")

# grab images
#imgSingle <- image_convert(image_read(urlArray[1]), format = "png")
#imgArray <- lapply(urlArray, FUN=image_read)

imgFileNum <- 1
for (urlString in urlArray) {
  img <- image_read(urlString)
  img_working <- image_convert(img, format = "png")
  image_write(img, path = paste0(Sys.getenv("MAGICK_TMPDIR"), "\\irSatImg", imgFileNum, sep=""))
  imgFileNum =+ 1
}



# define urls to most recent GOES satellite infrared image file
url_usaWestGoesIr <- "http://meteocentre.com/satellite/ssec/ssec_west_ir.gif"
url_usaEastGoesIr <- "http://meteocentre.com/satellite/eastbw_ir.gif"
#http://meteocentre.com/satellite/anim/eastbw_ir.1.gif
url_usaMidAtlGoesIr <- "http://meteocentre.com/satellite/nebw_ir.gif"

