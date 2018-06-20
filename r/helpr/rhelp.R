####
# Given pkgName, check to see if it's locally availble, and attempt to download if not
#   If download still fails, stop
#   If already or made to be available, load the package
####
instaload.package <- function(pkgName, ...) {
  if (!require(pkgName, character.only = TRUE)) {
    install.packages(pkgName, dependencies = TRUE, ...)
    if (!require(pkgName, character.only = TRUE)) stop(pkgName + " is not available locally or in the configured repository.")
  }
  library(pkgName, character.only = TRUE)
}
