######################################################################################################
#
# package.grabr
#     Multi-package handler;
#     A method that will check for the presence of a user-passed package
#     in the current context, and loads it or downloads it from CRAN depending
#     on the disposition of that package.
#
#     pkgName:
#       STRING;   The name of the package check and install and load into the
#                 current session if it is not present.
######################################################################################################
package.grabr <- function(...,
                          repos = getOption("repos"),
                          destdir = NULL,
                          verbose = getOption("verbose")) {
  packages <- c(...)
  sapply(packages, function(x) ifelse(length(grep(paste0('\\b', x,'\\b'), installed.packages()))<1, install.packages(x), print(paste("Package", x, "already installed."), sep=" ")), USE.NAMES = FALSE)
}

######################################################################################################
# 
# packageList
#   Optional;   A vector of package names to include or exclude 
# 
######################################################################################################
data.datasets <- function(packageList){
  # dat[which(dat$Item=='starwars'), 1]
  return(as.data.frame(suppressWarnings(data(package = .packages(all.available = TRUE))$results[,-2]), stringsAsFactors = F))
}

###################################################
# returns a string (x$Package) where the
#   'datasetName' matches x$Item
###################################################
get.data.package <- function(x=data.datasets, datasetName) {
  
  package <- x[which(dat$Item==datasetName), 1]
  
  if(length(package)==0) {
    # dataset doesnt exist
    warning('There is no dataset ' + datasetName + " available." )
  }
}

###################################################
# returns a data frame (Package, Item, Title) as 
#   a subset of 'x' whereof rows where the 
#   Item or Title contain a matching substring of 
#   'key'
###################################################
get.data.packages <- function(x, key) {
  
}

###################################################
# Calls 'vignette()' and subsets the result into
#   a usable form for automation.
#
# Returns a data frame (Package, Item, Title) as 
#   a subset of 'x' for packages listed in 'x'.
#   If 'x' is empty, all vignetts are returned.
#
# ======
# PARAMS
# ======
# x       Required=FALSE
#         A vector of package names, each of which
#           to return a discrete list of vignettes.
#
# ======
# USAGE
# ======
# 	> pkgs <- c("ggplot2", "htmlwidgets", "osmplotr")
#
# print requested subset of vignettes$results with added Command column:
# 	> get.vignettes(pkgs)
#			Package              Item                                   Title                 Command
#	94      ggplot2     ggplot2-specs Aesthetic specifications (source, html)     vignette("ggplot2")
#	95      ggplot2 extending-ggplot2        Extending ggplot2 (source, html)     vignette("ggplot2")
#	148 htmlwidgets  develop_advanced                 Advanced (source, html) vignette("htmlwidgets")
#	149 htmlwidgets     develop_intro             Introduction (source, html) vignette("htmlwidgets")
#	150 htmlwidgets    develop_sizing                   Sizing (source, html) vignette("htmlwidgets")
#	240    osmplotr        basic-maps               Basic Maps (source, html)    vignette("osmplotr")
#	241    osmplotr         data-maps                Data Maps (source, html)    vignette("osmplotr")
#
# extract the executable commands from the raw output:
# 	> as.data.frame.AsIs(get.vignettes(pkgs)$Command)
#	get.vignettes(pkgs)$Command
#	1         vignette("ggplot2")
#	2         vignette("ggplot2")
#	3     vignette("htmlwidgets")
#	4     vignette("htmlwidgets")
#	5     vignette("htmlwidgets")
#	6        vignette("osmplotr")
#	7        vignette("osmplotr")
###################################################
get.vignettes <- function(x = NULL) {
  vignettes <- as.data.frame(vignette()$results[,-2], stringsAsFactors = F)
  if(length(x)>0) {
    vignettes <- subset.data.frame(vignettes, Package %in% as.vector(x))
  }
  vignettes$Command <- paste0('vignette("', vignettes$Package, '")')
  return(vignettes)
}