# quick work around since metafor isn't installing properly on my desktop. 

searchresults <- read.csv("Oyster_Meta_analysis_search.csv", header= T, as.is= T)




#subset to columns of interest based on default naming from WoS; double check
#searchresults2 <-searchresults[,c("PT", "AU", "TI", "SO", "VL", "IS", "BP", "EP", "DI", "PD", "PY", "AB","TC", "Z9")]

#rename columns (optional): 
#names(searchresults2) <- c("pub.type", "authors", "title", "pub.name","vol", "issue", "b.page", "e.page", "doi", "pub.date", "pub.year", "abstract","wos.citations","alldb.citations")


## Delegate papers among reviewers for screening ####

# prepare to distribute among reviewers
totalpubs <- nrow(searchresults)

# create list of reviewers
theTeam <- c("Reni", "Kaylee", "Caitlin", "Rachel")

# distribute screening effort among reviewers
end <- 0
for (i in 1:length(theTeam)){
  write.csv( searchresults[(end+1):((totalpubs/4)*i),],paste("data/screen/screen_",theTeam[i],".csv",sep=""))
  
}


# save_split saves to separate files for each reviewer
# Note: you can unevenly distribute effort by adding commands `effort = c(60, 60)) for overlap 