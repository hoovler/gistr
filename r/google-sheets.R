source(c("E:/dev/code/shiny/utils.R"))

# vars
destdir <- "E:/dev/archive-packages/R"
requiredLibs <- c("googlesheets", "dplyr")

# load libs
package.grabr(requiredLibs, destdir = destdir)