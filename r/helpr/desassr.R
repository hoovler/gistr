##################################################################################################
# savToCsv
##################################################################################################
# strSavFilename        = full canonical filename of the SPSS .SAV file
# strCsvFilename        = full canonical filename of the desired target CSV file; if
#                         blank, default value is the same as strSavFilename, but with
#                         the .CSV extention rather than the .SAV one.
# strDescriptorFilename = full canonical filename of the desired target CSV file's
#                         metadata description file, which contains two rows, and the
#                         the same number of cols as the other CSV -- the first row is
#                         is a copy of the first row of the other CSV, while the second
#                         row provides much more descriptive information around the somewhat
#                         obsfucated header; if blank, default value is the same as
#                         strCsvFilename, but with the string literal 'descriptive' inserted
#                         just before the filetype.
##################################################################################################
savToCsv <-  function(strSavFilename="", strCsvFilename="", strDescriptorFilename=""){
  #instaload.package("foreign")
  #instaload.package("rapport")
  
  library(foreign)
  library(rapport)
  
  
  # grab main data object and convert to dataframe of dims XY
  dataFrameObject <- read.spss(strSavFilename, to.data.frame = TRUE)
  
  # set up descriptive dataframe of dims XZ
  columnHeaders <- colnames(dataFrameObject)
  variableLabels <- unname(attributes(dataFrameObject)$variable.labels)
  dataFrameDescriptors <- rbind(columnHeaders, variableLabels, deparse.level = 0)

  if (strCsvFilename == ""){
    
    strCsvFilename
  }
  
  # write both main and descriptive dataframes in their respective files
  write.csv(dataFrameObject, strCsvFilename, row.names = FALSE, quote = TRUE, sep = ",")
  write.csv(dataFrameDescriptors, strDescriptorFilename, row.names = FALSE, col.names = FALSE, quote = TRUE, sep = ",")
}