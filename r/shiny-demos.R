if (!require(lettercase)) install.packages("lettercase")
if (!require(stringr)) install.packages("stringr")
if (!require(readr)) install.packages("readr")
if (!require(highcharter)) install.packages("highcharter")
if (!require(foreach)) install.packages("foreach")

destdir <- "E:/dev/archive-packages/shiny"
exampleDir <- "001-hello"

# execute the shiny app
#########################################################################################
# shiny::runGitHub("shiny-examples", "rstudio", subdir = exampleDir, destdir = destdir) #
#########################################################################################

# after closing the shiny app, all github packages are suddenly available locally!
localSubDir <- "shiny-examples-master"
localParentDir <- paste(destdir, localSubDir, sep = "/")

########################################################################
# shiny::runApp(appDir = paste(localParentDir, exampleDir, sep = "/")) #
########################################################################

# list all available examples; need to remove last dir as it's the docker container
allSampleDirs <- list.dirs(localParentDir, recursive = FALSE)
allSampleDirs <- allSampleDirs[-length(allSampleDirs)]
allSampleNames <- basename(allSampleDirs)

# start a data frame
shinySamples <- as.data.frame(cbind(sample_name=allSampleNames, sample_directory=allSampleDirs), stringsAsFactors = FALSE)

# now start adding columns
shinySamples$has_readme <- file.exists(paste(shinySamples$sample_directory, "Readme.md", sep = "/"))
shinySamples$has_desc <- file.exists(paste(shinySamples$sample_directory, "DESCRIPTION", sep = "/"))

# at this point, execute this to run local app:
# > shiny::runApp(shinySamples$sample_directory[51])

nameSplit <- strsplit(shinySamples$sample_name, "-", fixed = TRUE)
shinySamples$sample_number <- sapply(nameSplit, function (x) x[1])
shinySamples$sample_title <- lettercase::str_title_case(unlist(lapply(nameSplit, function (x) stringr::str_flatten(x[-1], collapse = " ")), use.names = FALSE))

# Bring in some descriptive info
shinySamples$readme_path <- ifelse(shinySamples$has_readme, paste(shinySamples$sample_directory, "Readme.md", sep = "/"), NA)
shinySamples$desc_path <- ifelse(shinySamples$has_desc, paste(shinySamples$sample_directory, "DESCRIPTION", sep = "/"), NA)

shinySamples$readme_text <- vector(mode="character", length=nrow(shinySamples))
shinySamples$desc_text <- vector(mode="character", length=nrow(shinySamples))

foreach(i=1:nrow(shinySamples)) %do% {
  shinySamples$readme_text[i] <- ifelse(shinySamples$has_readme[i], readChar(shinySamples$readme_path[i], file.info(shinySamples$readme_path[i])$size), NA)
  shinySamples$desc_text[i] <- ifelse(shinySamples$has_desc[i], readChar(shinySamples$desc_path[i], file.info(shinySamples$desc_path[i])$size), NA)
  if (shinySamples$has_desc[i]){
    print("Yes!")
  }
}




