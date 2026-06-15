# Package ID: knb-lter-cwt.1047.14 Cataloging System:https://pasta.edirepository.org.
# Data set title: Climate Vulnerability of Southern Appalachian Forests.
# Data set creator:    - Coweeta Long Term Ecological Research Program 
# Data set creator: Dr. James Clark - Duke University 
# Metadata Provider:    -  
# Contact:    - Coweeta LTER Information Manager   - cwtim@uga.edu
# Stylesheet v2.16 for metadata conversion into program: John H. Porter, Univ. Virginia, jporter@virginia.edu      
# Uncomment the following lines to have R clear previous work, or set a working directory
rm(list=ls())

setwd("C:/Projetos/PPG - RF/LCF5900/aula4/knb-lter-cwt.1047.14")    



options(HTTPUserAgent="EDI_CodeGen")
	      

inUrl1  <- "https://pasta.lternet.edu/package/data/eml/knb-lter-cwt/1047/14/7586428b159e660307e35430731af96e" 
infile1 <- tempfile()
try(download.file(inUrl1,infile1,method="curl",extra=paste0(' -A "',getOption("HTTPUserAgent"),'"')))
if (is.na(file.size(infile1))) download.file(inUrl1,infile1,method="auto")

                   
 dt1 <-read.csv(infile1,header=F 
          ,skip=1
            ,sep="\t"  
        , col.names=c(
                    "Site_Name",     
                    "trap_number",     
                    "month",     
                    "day",     
                    "year",     
                    "abieFras",     
                    "abieFras_fruit",     
                    "acerSpic",     
                    "acerUNKN",     
                    "betuUNKN",     
                    "piceRube",     
                    "piceRube_fruit",     
                    "prunPens",     
                    "rhodCata",     
                    "sorbAmer",     
                    "sorbAmer_fruit",     
                    "vibuLant",     
                    "unknUNKN",     
                    "notes"    ), check.names=TRUE)
               
unlink(infile1)
		    
# Fix any interval or ratio columns mistakenly read in as nominal and nominal columns read as numeric or dates read as strings
                
if (class(dt1$Site_Name)!="factor") dt1$Site_Name<- as.factor(dt1$Site_Name)
if (class(dt1$trap_number)!="factor") dt1$trap_number<- as.factor(dt1$trap_number)
if (class(dt1$abieFras)=="factor") dt1$abieFras <-as.numeric(levels(dt1$abieFras))[as.integer(dt1$abieFras) ]               
if (class(dt1$abieFras)=="character") dt1$abieFras <-as.numeric(dt1$abieFras)
if (class(dt1$abieFras_fruit)=="factor") dt1$abieFras_fruit <-as.numeric(levels(dt1$abieFras_fruit))[as.integer(dt1$abieFras_fruit) ]               
if (class(dt1$abieFras_fruit)=="character") dt1$abieFras_fruit <-as.numeric(dt1$abieFras_fruit)
if (class(dt1$acerSpic)=="factor") dt1$acerSpic <-as.numeric(levels(dt1$acerSpic))[as.integer(dt1$acerSpic) ]               
if (class(dt1$acerSpic)=="character") dt1$acerSpic <-as.numeric(dt1$acerSpic)
if (class(dt1$acerUNKN)=="factor") dt1$acerUNKN <-as.numeric(levels(dt1$acerUNKN))[as.integer(dt1$acerUNKN) ]               
if (class(dt1$acerUNKN)=="character") dt1$acerUNKN <-as.numeric(dt1$acerUNKN)
if (class(dt1$betuUNKN)=="factor") dt1$betuUNKN <-as.numeric(levels(dt1$betuUNKN))[as.integer(dt1$betuUNKN) ]               
if (class(dt1$betuUNKN)=="character") dt1$betuUNKN <-as.numeric(dt1$betuUNKN)
if (class(dt1$piceRube)=="factor") dt1$piceRube <-as.numeric(levels(dt1$piceRube))[as.integer(dt1$piceRube) ]               
if (class(dt1$piceRube)=="character") dt1$piceRube <-as.numeric(dt1$piceRube)
if (class(dt1$piceRube_fruit)=="factor") dt1$piceRube_fruit <-as.numeric(levels(dt1$piceRube_fruit))[as.integer(dt1$piceRube_fruit) ]               
if (class(dt1$piceRube_fruit)=="character") dt1$piceRube_fruit <-as.numeric(dt1$piceRube_fruit)
if (class(dt1$prunPens)=="factor") dt1$prunPens <-as.numeric(levels(dt1$prunPens))[as.integer(dt1$prunPens) ]               
if (class(dt1$prunPens)=="character") dt1$prunPens <-as.numeric(dt1$prunPens)
if (class(dt1$rhodCata)=="factor") dt1$rhodCata <-as.numeric(levels(dt1$rhodCata))[as.integer(dt1$rhodCata) ]               
if (class(dt1$rhodCata)=="character") dt1$rhodCata <-as.numeric(dt1$rhodCata)
if (class(dt1$sorbAmer)=="factor") dt1$sorbAmer <-as.numeric(levels(dt1$sorbAmer))[as.integer(dt1$sorbAmer) ]               
if (class(dt1$sorbAmer)=="character") dt1$sorbAmer <-as.numeric(dt1$sorbAmer)
if (class(dt1$sorbAmer_fruit)=="factor") dt1$sorbAmer_fruit <-as.numeric(levels(dt1$sorbAmer_fruit))[as.integer(dt1$sorbAmer_fruit) ]               
if (class(dt1$sorbAmer_fruit)=="character") dt1$sorbAmer_fruit <-as.numeric(dt1$sorbAmer_fruit)
if (class(dt1$vibuLant)=="factor") dt1$vibuLant <-as.numeric(levels(dt1$vibuLant))[as.integer(dt1$vibuLant) ]               
if (class(dt1$vibuLant)=="character") dt1$vibuLant <-as.numeric(dt1$vibuLant)
if (class(dt1$unknUNKN)=="factor") dt1$unknUNKN <-as.numeric(levels(dt1$unknUNKN))[as.integer(dt1$unknUNKN) ]               
if (class(dt1$unknUNKN)=="character") dt1$unknUNKN <-as.numeric(dt1$unknUNKN)
if (class(dt1$notes)!="factor") dt1$notes<- as.factor(dt1$notes)
                
# Convert Missing Values to NA for non-dates
                
dt1$trap_number <- as.factor(ifelse((trimws(as.character(dt1$trap_number))==trimws("NaN")),NA,as.character(dt1$trap_number)))
dt1$abieFras <- ifelse((trimws(as.character(dt1$abieFras))==trimws("NaN")),NA,dt1$abieFras)               
suppressWarnings(dt1$abieFras <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt1$abieFras))==as.character(as.numeric("NaN"))),NA,dt1$abieFras))
dt1$abieFras_fruit <- ifelse((trimws(as.character(dt1$abieFras_fruit))==trimws("NaN")),NA,dt1$abieFras_fruit)               
suppressWarnings(dt1$abieFras_fruit <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt1$abieFras_fruit))==as.character(as.numeric("NaN"))),NA,dt1$abieFras_fruit))
dt1$acerSpic <- ifelse((trimws(as.character(dt1$acerSpic))==trimws("NaN")),NA,dt1$acerSpic)               
suppressWarnings(dt1$acerSpic <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt1$acerSpic))==as.character(as.numeric("NaN"))),NA,dt1$acerSpic))
dt1$acerUNKN <- ifelse((trimws(as.character(dt1$acerUNKN))==trimws("NaN")),NA,dt1$acerUNKN)               
suppressWarnings(dt1$acerUNKN <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt1$acerUNKN))==as.character(as.numeric("NaN"))),NA,dt1$acerUNKN))
dt1$betuUNKN <- ifelse((trimws(as.character(dt1$betuUNKN))==trimws("NaN")),NA,dt1$betuUNKN)               
suppressWarnings(dt1$betuUNKN <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt1$betuUNKN))==as.character(as.numeric("NaN"))),NA,dt1$betuUNKN))
dt1$piceRube <- ifelse((trimws(as.character(dt1$piceRube))==trimws("NaN")),NA,dt1$piceRube)               
suppressWarnings(dt1$piceRube <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt1$piceRube))==as.character(as.numeric("NaN"))),NA,dt1$piceRube))
dt1$piceRube_fruit <- ifelse((trimws(as.character(dt1$piceRube_fruit))==trimws("NaN")),NA,dt1$piceRube_fruit)               
suppressWarnings(dt1$piceRube_fruit <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt1$piceRube_fruit))==as.character(as.numeric("NaN"))),NA,dt1$piceRube_fruit))
dt1$prunPens <- ifelse((trimws(as.character(dt1$prunPens))==trimws("NaN")),NA,dt1$prunPens)               
suppressWarnings(dt1$prunPens <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt1$prunPens))==as.character(as.numeric("NaN"))),NA,dt1$prunPens))
dt1$rhodCata <- ifelse((trimws(as.character(dt1$rhodCata))==trimws("NaN")),NA,dt1$rhodCata)               
suppressWarnings(dt1$rhodCata <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt1$rhodCata))==as.character(as.numeric("NaN"))),NA,dt1$rhodCata))
dt1$sorbAmer <- ifelse((trimws(as.character(dt1$sorbAmer))==trimws("NaN")),NA,dt1$sorbAmer)               
suppressWarnings(dt1$sorbAmer <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt1$sorbAmer))==as.character(as.numeric("NaN"))),NA,dt1$sorbAmer))
dt1$sorbAmer_fruit <- ifelse((trimws(as.character(dt1$sorbAmer_fruit))==trimws("NaN")),NA,dt1$sorbAmer_fruit)               
suppressWarnings(dt1$sorbAmer_fruit <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt1$sorbAmer_fruit))==as.character(as.numeric("NaN"))),NA,dt1$sorbAmer_fruit))
dt1$vibuLant <- ifelse((trimws(as.character(dt1$vibuLant))==trimws("NaN")),NA,dt1$vibuLant)               
suppressWarnings(dt1$vibuLant <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt1$vibuLant))==as.character(as.numeric("NaN"))),NA,dt1$vibuLant))
dt1$unknUNKN <- ifelse((trimws(as.character(dt1$unknUNKN))==trimws("NaN")),NA,dt1$unknUNKN)               
suppressWarnings(dt1$unknUNKN <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt1$unknUNKN))==as.character(as.numeric("NaN"))),NA,dt1$unknUNKN))


# Here is the structure of the input data frame:
print("dt1) Structure")		    
str(dt1)                            
attach(dt1)                            
# The analyses below are basic descriptions of the variables. After testing, they should be replaced.                 

print(" ")
print("Summary of Site_Name")
print(summary(Site_Name))
print(" ")
print("Summary of trap_number")
print(summary(trap_number))
print(" ")
print("Summary of month")
print(summary(month))
print(" ")
print("Summary of day")
print(summary(day))
print(" ")
print("Summary of year")
print(summary(year))
print(" ")
print("Summary of abieFras")
print(summary(abieFras))
print(" ")
print("Summary of abieFras_fruit")
print(summary(abieFras_fruit))
print(" ")
print("Summary of acerSpic")
print(summary(acerSpic))
print(" ")
print("Summary of acerUNKN")
print(summary(acerUNKN))
print(" ")
print("Summary of betuUNKN")
print(summary(betuUNKN))
print(" ")
print("Summary of piceRube")
print(summary(piceRube))
print(" ")
print("Summary of piceRube_fruit")
print(summary(piceRube_fruit))
print(" ")
print("Summary of prunPens")
print(summary(prunPens))
print(" ")
print("Summary of rhodCata")
print(summary(rhodCata))
print(" ")
print("Summary of sorbAmer")
print(summary(sorbAmer))
print(" ")
print("Summary of sorbAmer_fruit")
print(summary(sorbAmer_fruit))
print(" ")
print("Summary of vibuLant")
print(summary(vibuLant))
print(" ")
print("Summary of unknUNKN")
print(summary(unknUNKN))
print(" ")
print("Summary of notes")
print(summary(notes)) 
# Get more details on character variables
                 

print(" ")
print("Summary of Site_Name")
print(summary(as.factor(dt1$Site_Name))) 

print(" ")
print("Summary of trap_number")
print(summary(as.factor(dt1$trap_number))) 

print(" ")
print("Summary of notes")
print(summary(as.factor(dt1$notes)))
detach(dt1)               
        
	      

inUrl2  <- "https://pasta.lternet.edu/package/data/eml/knb-lter-cwt/1047/14/4996b822f1de5bb91571e94051db4d78" 
infile2 <- tempfile()
try(download.file(inUrl2,infile2,method="curl",extra=paste0(' -A "',getOption("HTTPUserAgent"),'"')))
if (is.na(file.size(infile2))) download.file(inUrl2,infile2,method="auto")

                   
 dt2 <-read.csv(infile2,header=F 
          ,skip=1
            ,sep="\t"  
        , col.names=c(
                    "Site_Name",     
                    "ID",     
                    "tag",     
                    "species",     
                    "stem",     
                    "censinyr",     
                    "growinyr",     
                    "deathyr",     
                    "censoryr",     
                    "yrMIA",     
                    "postX",     
                    "postY",     
                    "localX",     
                    "localY",     
                    "x",     
                    "y",     
                    "UTM_Easting",     
                    "UTM_Northing",     
                    "elevation",     
                    "diam2011",     
                    "diam2014",     
                    "sex2011",     
                    "sex2014",     
                    "canopy2011",     
                    "canopy2014",     
                    "damage2010",     
                    "damage2011",     
                    "damage2014",     
                    "Notes2011",     
                    "Notes2014"    ), check.names=TRUE)
               
unlink(infile2)
		    
# Fix any interval or ratio columns mistakenly read in as nominal and nominal columns read as numeric or dates read as strings
                
if (class(dt2$Site_Name)!="factor") dt2$Site_Name<- as.factor(dt2$Site_Name)
if (class(dt2$ID)=="factor") dt2$ID <-as.numeric(levels(dt2$ID))[as.integer(dt2$ID) ]               
if (class(dt2$ID)=="character") dt2$ID <-as.numeric(dt2$ID)
if (class(dt2$tag)!="factor") dt2$tag<- as.factor(dt2$tag)
if (class(dt2$species)!="factor") dt2$species<- as.factor(dt2$species)
if (class(dt2$stem)=="factor") dt2$stem <-as.numeric(levels(dt2$stem))[as.integer(dt2$stem) ]               
if (class(dt2$stem)=="character") dt2$stem <-as.numeric(dt2$stem)
if (class(dt2$postX)=="factor") dt2$postX <-as.numeric(levels(dt2$postX))[as.integer(dt2$postX) ]               
if (class(dt2$postX)=="character") dt2$postX <-as.numeric(dt2$postX)
if (class(dt2$postY)=="factor") dt2$postY <-as.numeric(levels(dt2$postY))[as.integer(dt2$postY) ]               
if (class(dt2$postY)=="character") dt2$postY <-as.numeric(dt2$postY)
if (class(dt2$localX)=="factor") dt2$localX <-as.numeric(levels(dt2$localX))[as.integer(dt2$localX) ]               
if (class(dt2$localX)=="character") dt2$localX <-as.numeric(dt2$localX)
if (class(dt2$localY)=="factor") dt2$localY <-as.numeric(levels(dt2$localY))[as.integer(dt2$localY) ]               
if (class(dt2$localY)=="character") dt2$localY <-as.numeric(dt2$localY)
if (class(dt2$x)=="factor") dt2$x <-as.numeric(levels(dt2$x))[as.integer(dt2$x) ]               
if (class(dt2$x)=="character") dt2$x <-as.numeric(dt2$x)
if (class(dt2$y)=="factor") dt2$y <-as.numeric(levels(dt2$y))[as.integer(dt2$y) ]               
if (class(dt2$y)=="character") dt2$y <-as.numeric(dt2$y)
if (class(dt2$UTM_Easting)=="factor") dt2$UTM_Easting <-as.numeric(levels(dt2$UTM_Easting))[as.integer(dt2$UTM_Easting) ]               
if (class(dt2$UTM_Easting)=="character") dt2$UTM_Easting <-as.numeric(dt2$UTM_Easting)
if (class(dt2$UTM_Northing)=="factor") dt2$UTM_Northing <-as.numeric(levels(dt2$UTM_Northing))[as.integer(dt2$UTM_Northing) ]               
if (class(dt2$UTM_Northing)=="character") dt2$UTM_Northing <-as.numeric(dt2$UTM_Northing)
if (class(dt2$elevation)=="factor") dt2$elevation <-as.numeric(levels(dt2$elevation))[as.integer(dt2$elevation) ]               
if (class(dt2$elevation)=="character") dt2$elevation <-as.numeric(dt2$elevation)
if (class(dt2$diam2011)=="factor") dt2$diam2011 <-as.numeric(levels(dt2$diam2011))[as.integer(dt2$diam2011) ]               
if (class(dt2$diam2011)=="character") dt2$diam2011 <-as.numeric(dt2$diam2011)
if (class(dt2$diam2014)=="factor") dt2$diam2014 <-as.numeric(levels(dt2$diam2014))[as.integer(dt2$diam2014) ]               
if (class(dt2$diam2014)=="character") dt2$diam2014 <-as.numeric(dt2$diam2014)
if (class(dt2$sex2011)!="factor") dt2$sex2011<- as.factor(dt2$sex2011)
if (class(dt2$sex2014)!="factor") dt2$sex2014<- as.factor(dt2$sex2014)
if (class(dt2$canopy2011)!="factor") dt2$canopy2011<- as.factor(dt2$canopy2011)
if (class(dt2$canopy2014)!="factor") dt2$canopy2014<- as.factor(dt2$canopy2014)
if (class(dt2$damage2010)!="factor") dt2$damage2010<- as.factor(dt2$damage2010)
if (class(dt2$damage2011)!="factor") dt2$damage2011<- as.factor(dt2$damage2011)
if (class(dt2$damage2014)!="factor") dt2$damage2014<- as.factor(dt2$damage2014)
if (class(dt2$Notes2011)!="factor") dt2$Notes2011<- as.factor(dt2$Notes2011)
if (class(dt2$Notes2014)!="factor") dt2$Notes2014<- as.factor(dt2$Notes2014)
                
# Convert Missing Values to NA for non-dates
                
dt2$ID <- ifelse((trimws(as.character(dt2$ID))==trimws("NaN")),NA,dt2$ID)               
suppressWarnings(dt2$ID <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt2$ID))==as.character(as.numeric("NaN"))),NA,dt2$ID))
dt2$tag <- as.factor(ifelse((trimws(as.character(dt2$tag))==trimws("NaN")),NA,as.character(dt2$tag)))
dt2$stem <- ifelse((trimws(as.character(dt2$stem))==trimws("NaN")),NA,dt2$stem)               
suppressWarnings(dt2$stem <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt2$stem))==as.character(as.numeric("NaN"))),NA,dt2$stem))
dt2$postX <- ifelse((trimws(as.character(dt2$postX))==trimws("NaN")),NA,dt2$postX)               
suppressWarnings(dt2$postX <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt2$postX))==as.character(as.numeric("NaN"))),NA,dt2$postX))
dt2$postY <- ifelse((trimws(as.character(dt2$postY))==trimws("NaN")),NA,dt2$postY)               
suppressWarnings(dt2$postY <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt2$postY))==as.character(as.numeric("NaN"))),NA,dt2$postY))
dt2$localX <- ifelse((trimws(as.character(dt2$localX))==trimws("NaN")),NA,dt2$localX)               
suppressWarnings(dt2$localX <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt2$localX))==as.character(as.numeric("NaN"))),NA,dt2$localX))
dt2$localY <- ifelse((trimws(as.character(dt2$localY))==trimws("NaN")),NA,dt2$localY)               
suppressWarnings(dt2$localY <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt2$localY))==as.character(as.numeric("NaN"))),NA,dt2$localY))
dt2$x <- ifelse((trimws(as.character(dt2$x))==trimws("NaN")),NA,dt2$x)               
suppressWarnings(dt2$x <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt2$x))==as.character(as.numeric("NaN"))),NA,dt2$x))
dt2$y <- ifelse((trimws(as.character(dt2$y))==trimws("NaN")),NA,dt2$y)               
suppressWarnings(dt2$y <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt2$y))==as.character(as.numeric("NaN"))),NA,dt2$y))
dt2$UTM_Easting <- ifelse((trimws(as.character(dt2$UTM_Easting))==trimws("NaN")),NA,dt2$UTM_Easting)               
suppressWarnings(dt2$UTM_Easting <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt2$UTM_Easting))==as.character(as.numeric("NaN"))),NA,dt2$UTM_Easting))
dt2$UTM_Northing <- ifelse((trimws(as.character(dt2$UTM_Northing))==trimws("NaN")),NA,dt2$UTM_Northing)               
suppressWarnings(dt2$UTM_Northing <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt2$UTM_Northing))==as.character(as.numeric("NaN"))),NA,dt2$UTM_Northing))
dt2$elevation <- ifelse((trimws(as.character(dt2$elevation))==trimws("NaN")),NA,dt2$elevation)               
suppressWarnings(dt2$elevation <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt2$elevation))==as.character(as.numeric("NaN"))),NA,dt2$elevation))
dt2$diam2011 <- ifelse((trimws(as.character(dt2$diam2011))==trimws("NaN")),NA,dt2$diam2011)               
suppressWarnings(dt2$diam2011 <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt2$diam2011))==as.character(as.numeric("NaN"))),NA,dt2$diam2011))
dt2$diam2014 <- ifelse((trimws(as.character(dt2$diam2014))==trimws("NaN")),NA,dt2$diam2014)               
suppressWarnings(dt2$diam2014 <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt2$diam2014))==as.character(as.numeric("NaN"))),NA,dt2$diam2014))


# Here is the structure of the input data frame:
print("dt2) Structure")		    
str(dt2)                            
attach(dt2)                            
# The analyses below are basic descriptions of the variables. After testing, they should be replaced.                 

print(" ")
print("Summary of Site_Name")
print(summary(Site_Name))
print(" ")
print("Summary of ID")
print(summary(ID))
print(" ")
print("Summary of tag")
print(summary(tag))
print(" ")
print("Summary of species")
print(summary(species))
print(" ")
print("Summary of stem")
print(summary(stem))
print(" ")
print("Summary of censinyr")
print(summary(censinyr))
print(" ")
print("Summary of growinyr")
print(summary(growinyr))
print(" ")
print("Summary of deathyr")
print(summary(deathyr))
print(" ")
print("Summary of censoryr")
print(summary(censoryr))
print(" ")
print("Summary of yrMIA")
print(summary(yrMIA))
print(" ")
print("Summary of postX")
print(summary(postX))
print(" ")
print("Summary of postY")
print(summary(postY))
print(" ")
print("Summary of localX")
print(summary(localX))
print(" ")
print("Summary of localY")
print(summary(localY))
print(" ")
print("Summary of x")
print(summary(x))
print(" ")
print("Summary of y")
print(summary(y))
print(" ")
print("Summary of UTM_Easting")
print(summary(UTM_Easting))
print(" ")
print("Summary of UTM_Northing")
print(summary(UTM_Northing))
print(" ")
print("Summary of elevation")
print(summary(elevation))
print(" ")
print("Summary of diam2011")
print(summary(diam2011))
print(" ")
print("Summary of diam2014")
print(summary(diam2014))
print(" ")
print("Summary of sex2011")
print(summary(sex2011))
print(" ")
print("Summary of sex2014")
print(summary(sex2014))
print(" ")
print("Summary of canopy2011")
print(summary(canopy2011))
print(" ")
print("Summary of canopy2014")
print(summary(canopy2014))
print(" ")
print("Summary of damage2010")
print(summary(damage2010))
print(" ")
print("Summary of damage2011")
print(summary(damage2011))
print(" ")
print("Summary of damage2014")
print(summary(damage2014))
print(" ")
print("Summary of Notes2011")
print(summary(Notes2011))
print(" ")
print("Summary of Notes2014")
print(summary(Notes2014)) 
# Get more details on character variables
                 

print(" ")
print("Summary of Site_Name")
print(summary(as.factor(dt2$Site_Name))) 

print(" ")
print("Summary of tag")
print(summary(as.factor(dt2$tag))) 

print(" ")
print("Summary of species")
print(summary(as.factor(dt2$species))) 

print(" ")
print("Summary of sex2011")
print(summary(as.factor(dt2$sex2011))) 

print(" ")
print("Summary of sex2014")
print(summary(as.factor(dt2$sex2014))) 

print(" ")
print("Summary of canopy2011")
print(summary(as.factor(dt2$canopy2011))) 

print(" ")
print("Summary of canopy2014")
print(summary(as.factor(dt2$canopy2014))) 

print(" ")
print("Summary of damage2010")
print(summary(as.factor(dt2$damage2010))) 

print(" ")
print("Summary of damage2011")
print(summary(as.factor(dt2$damage2011))) 

print(" ")
print("Summary of damage2014")
print(summary(as.factor(dt2$damage2014))) 

print(" ")
print("Summary of Notes2011")
print(summary(as.factor(dt2$Notes2011))) 

print(" ")
print("Summary of Notes2014")
print(summary(as.factor(dt2$Notes2014)))
detach(dt2)               
        
	      

inUrl3  <- "https://pasta.lternet.edu/package/data/eml/knb-lter-cwt/1047/14/475ee33e92485be994ad8e35a5a4695b" 
infile3 <- tempfile()
try(download.file(inUrl3,infile3,method="curl",extra=paste0(' -A "',getOption("HTTPUserAgent"),'"')))
if (is.na(file.size(infile3))) download.file(inUrl3,infile3,method="auto")

                   
 dt3 <-read.csv(infile3,header=F 
          ,skip=1
            ,sep="\t"  
        , col.names=c(
                    "Site_Name",     
                    "trap_number",     
                    "month",     
                    "day",     
                    "year",     
                    "abieFras",     
                    "abieFras_fruit",     
                    "acerPens",     
                    "acerRubr",     
                    "acerSpic",     
                    "acerUNKN",     
                    "betuLent",     
                    "betuAlle",     
                    "betuUNKN",     
                    "caryTome",     
                    "cornFlor",     
                    "faguGran",     
                    "fraxAmer",     
                    "fraxPenn",     
                    "ilexMont",     
                    "piceRube",     
                    "piceRube_fruit",     
                    "piceRubeImma",     
                    "prunSero",     
                    "rhodCata",     
                    "sorbAmer",     
                    "sorbAmer_fruit",     
                    "unknUNKN",     
                    "notes"    ), check.names=TRUE)
               
unlink(infile3)
		    
# Fix any interval or ratio columns mistakenly read in as nominal and nominal columns read as numeric or dates read as strings
                
if (class(dt3$Site_Name)!="factor") dt3$Site_Name<- as.factor(dt3$Site_Name)
if (class(dt3$trap_number)!="factor") dt3$trap_number<- as.factor(dt3$trap_number)
if (class(dt3$abieFras)=="factor") dt3$abieFras <-as.numeric(levels(dt3$abieFras))[as.integer(dt3$abieFras) ]               
if (class(dt3$abieFras)=="character") dt3$abieFras <-as.numeric(dt3$abieFras)
if (class(dt3$abieFras_fruit)=="factor") dt3$abieFras_fruit <-as.numeric(levels(dt3$abieFras_fruit))[as.integer(dt3$abieFras_fruit) ]               
if (class(dt3$abieFras_fruit)=="character") dt3$abieFras_fruit <-as.numeric(dt3$abieFras_fruit)
if (class(dt3$acerPens)=="factor") dt3$acerPens <-as.numeric(levels(dt3$acerPens))[as.integer(dt3$acerPens) ]               
if (class(dt3$acerPens)=="character") dt3$acerPens <-as.numeric(dt3$acerPens)
if (class(dt3$acerRubr)=="factor") dt3$acerRubr <-as.numeric(levels(dt3$acerRubr))[as.integer(dt3$acerRubr) ]               
if (class(dt3$acerRubr)=="character") dt3$acerRubr <-as.numeric(dt3$acerRubr)
if (class(dt3$acerSpic)=="factor") dt3$acerSpic <-as.numeric(levels(dt3$acerSpic))[as.integer(dt3$acerSpic) ]               
if (class(dt3$acerSpic)=="character") dt3$acerSpic <-as.numeric(dt3$acerSpic)
if (class(dt3$acerUNKN)=="factor") dt3$acerUNKN <-as.numeric(levels(dt3$acerUNKN))[as.integer(dt3$acerUNKN) ]               
if (class(dt3$acerUNKN)=="character") dt3$acerUNKN <-as.numeric(dt3$acerUNKN)
if (class(dt3$betuLent)=="factor") dt3$betuLent <-as.numeric(levels(dt3$betuLent))[as.integer(dt3$betuLent) ]               
if (class(dt3$betuLent)=="character") dt3$betuLent <-as.numeric(dt3$betuLent)
if (class(dt3$betuAlle)=="factor") dt3$betuAlle <-as.numeric(levels(dt3$betuAlle))[as.integer(dt3$betuAlle) ]               
if (class(dt3$betuAlle)=="character") dt3$betuAlle <-as.numeric(dt3$betuAlle)
if (class(dt3$betuUNKN)=="factor") dt3$betuUNKN <-as.numeric(levels(dt3$betuUNKN))[as.integer(dt3$betuUNKN) ]               
if (class(dt3$betuUNKN)=="character") dt3$betuUNKN <-as.numeric(dt3$betuUNKN)
if (class(dt3$caryTome)=="factor") dt3$caryTome <-as.numeric(levels(dt3$caryTome))[as.integer(dt3$caryTome) ]               
if (class(dt3$caryTome)=="character") dt3$caryTome <-as.numeric(dt3$caryTome)
if (class(dt3$cornFlor)=="factor") dt3$cornFlor <-as.numeric(levels(dt3$cornFlor))[as.integer(dt3$cornFlor) ]               
if (class(dt3$cornFlor)=="character") dt3$cornFlor <-as.numeric(dt3$cornFlor)
if (class(dt3$faguGran)=="factor") dt3$faguGran <-as.numeric(levels(dt3$faguGran))[as.integer(dt3$faguGran) ]               
if (class(dt3$faguGran)=="character") dt3$faguGran <-as.numeric(dt3$faguGran)
if (class(dt3$fraxAmer)=="factor") dt3$fraxAmer <-as.numeric(levels(dt3$fraxAmer))[as.integer(dt3$fraxAmer) ]               
if (class(dt3$fraxAmer)=="character") dt3$fraxAmer <-as.numeric(dt3$fraxAmer)
if (class(dt3$fraxPenn)=="factor") dt3$fraxPenn <-as.numeric(levels(dt3$fraxPenn))[as.integer(dt3$fraxPenn) ]               
if (class(dt3$fraxPenn)=="character") dt3$fraxPenn <-as.numeric(dt3$fraxPenn)
if (class(dt3$ilexMont)=="factor") dt3$ilexMont <-as.numeric(levels(dt3$ilexMont))[as.integer(dt3$ilexMont) ]               
if (class(dt3$ilexMont)=="character") dt3$ilexMont <-as.numeric(dt3$ilexMont)
if (class(dt3$piceRube)=="factor") dt3$piceRube <-as.numeric(levels(dt3$piceRube))[as.integer(dt3$piceRube) ]               
if (class(dt3$piceRube)=="character") dt3$piceRube <-as.numeric(dt3$piceRube)
if (class(dt3$piceRube_fruit)=="factor") dt3$piceRube_fruit <-as.numeric(levels(dt3$piceRube_fruit))[as.integer(dt3$piceRube_fruit) ]               
if (class(dt3$piceRube_fruit)=="character") dt3$piceRube_fruit <-as.numeric(dt3$piceRube_fruit)
if (class(dt3$piceRubeImma)=="factor") dt3$piceRubeImma <-as.numeric(levels(dt3$piceRubeImma))[as.integer(dt3$piceRubeImma) ]               
if (class(dt3$piceRubeImma)=="character") dt3$piceRubeImma <-as.numeric(dt3$piceRubeImma)
if (class(dt3$prunSero)=="factor") dt3$prunSero <-as.numeric(levels(dt3$prunSero))[as.integer(dt3$prunSero) ]               
if (class(dt3$prunSero)=="character") dt3$prunSero <-as.numeric(dt3$prunSero)
if (class(dt3$rhodCata)=="factor") dt3$rhodCata <-as.numeric(levels(dt3$rhodCata))[as.integer(dt3$rhodCata) ]               
if (class(dt3$rhodCata)=="character") dt3$rhodCata <-as.numeric(dt3$rhodCata)
if (class(dt3$sorbAmer)=="factor") dt3$sorbAmer <-as.numeric(levels(dt3$sorbAmer))[as.integer(dt3$sorbAmer) ]               
if (class(dt3$sorbAmer)=="character") dt3$sorbAmer <-as.numeric(dt3$sorbAmer)
if (class(dt3$sorbAmer_fruit)=="factor") dt3$sorbAmer_fruit <-as.numeric(levels(dt3$sorbAmer_fruit))[as.integer(dt3$sorbAmer_fruit) ]               
if (class(dt3$sorbAmer_fruit)=="character") dt3$sorbAmer_fruit <-as.numeric(dt3$sorbAmer_fruit)
if (class(dt3$unknUNKN)=="factor") dt3$unknUNKN <-as.numeric(levels(dt3$unknUNKN))[as.integer(dt3$unknUNKN) ]               
if (class(dt3$unknUNKN)=="character") dt3$unknUNKN <-as.numeric(dt3$unknUNKN)
if (class(dt3$notes)!="factor") dt3$notes<- as.factor(dt3$notes)
                
# Convert Missing Values to NA for non-dates
                
dt3$trap_number <- as.factor(ifelse((trimws(as.character(dt3$trap_number))==trimws("NaN")),NA,as.character(dt3$trap_number)))
dt3$abieFras <- ifelse((trimws(as.character(dt3$abieFras))==trimws("NaN")),NA,dt3$abieFras)               
suppressWarnings(dt3$abieFras <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt3$abieFras))==as.character(as.numeric("NaN"))),NA,dt3$abieFras))
dt3$abieFras_fruit <- ifelse((trimws(as.character(dt3$abieFras_fruit))==trimws("NaN")),NA,dt3$abieFras_fruit)               
suppressWarnings(dt3$abieFras_fruit <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt3$abieFras_fruit))==as.character(as.numeric("NaN"))),NA,dt3$abieFras_fruit))
dt3$acerPens <- ifelse((trimws(as.character(dt3$acerPens))==trimws("NaN")),NA,dt3$acerPens)               
suppressWarnings(dt3$acerPens <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt3$acerPens))==as.character(as.numeric("NaN"))),NA,dt3$acerPens))
dt3$acerRubr <- ifelse((trimws(as.character(dt3$acerRubr))==trimws("NaN")),NA,dt3$acerRubr)               
suppressWarnings(dt3$acerRubr <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt3$acerRubr))==as.character(as.numeric("NaN"))),NA,dt3$acerRubr))
dt3$acerSpic <- ifelse((trimws(as.character(dt3$acerSpic))==trimws("NaN")),NA,dt3$acerSpic)               
suppressWarnings(dt3$acerSpic <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt3$acerSpic))==as.character(as.numeric("NaN"))),NA,dt3$acerSpic))
dt3$acerUNKN <- ifelse((trimws(as.character(dt3$acerUNKN))==trimws("NaN")),NA,dt3$acerUNKN)               
suppressWarnings(dt3$acerUNKN <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt3$acerUNKN))==as.character(as.numeric("NaN"))),NA,dt3$acerUNKN))
dt3$betuLent <- ifelse((trimws(as.character(dt3$betuLent))==trimws("NaN")),NA,dt3$betuLent)               
suppressWarnings(dt3$betuLent <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt3$betuLent))==as.character(as.numeric("NaN"))),NA,dt3$betuLent))
dt3$betuAlle <- ifelse((trimws(as.character(dt3$betuAlle))==trimws("NaN")),NA,dt3$betuAlle)               
suppressWarnings(dt3$betuAlle <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt3$betuAlle))==as.character(as.numeric("NaN"))),NA,dt3$betuAlle))
dt3$betuUNKN <- ifelse((trimws(as.character(dt3$betuUNKN))==trimws("NaN")),NA,dt3$betuUNKN)               
suppressWarnings(dt3$betuUNKN <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt3$betuUNKN))==as.character(as.numeric("NaN"))),NA,dt3$betuUNKN))
dt3$caryTome <- ifelse((trimws(as.character(dt3$caryTome))==trimws("NaN")),NA,dt3$caryTome)               
suppressWarnings(dt3$caryTome <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt3$caryTome))==as.character(as.numeric("NaN"))),NA,dt3$caryTome))
dt3$cornFlor <- ifelse((trimws(as.character(dt3$cornFlor))==trimws("NaN")),NA,dt3$cornFlor)               
suppressWarnings(dt3$cornFlor <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt3$cornFlor))==as.character(as.numeric("NaN"))),NA,dt3$cornFlor))
dt3$faguGran <- ifelse((trimws(as.character(dt3$faguGran))==trimws("NaN")),NA,dt3$faguGran)               
suppressWarnings(dt3$faguGran <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt3$faguGran))==as.character(as.numeric("NaN"))),NA,dt3$faguGran))
dt3$fraxAmer <- ifelse((trimws(as.character(dt3$fraxAmer))==trimws("NaN")),NA,dt3$fraxAmer)               
suppressWarnings(dt3$fraxAmer <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt3$fraxAmer))==as.character(as.numeric("NaN"))),NA,dt3$fraxAmer))
dt3$fraxPenn <- ifelse((trimws(as.character(dt3$fraxPenn))==trimws("NaN")),NA,dt3$fraxPenn)               
suppressWarnings(dt3$fraxPenn <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt3$fraxPenn))==as.character(as.numeric("NaN"))),NA,dt3$fraxPenn))
dt3$ilexMont <- ifelse((trimws(as.character(dt3$ilexMont))==trimws("NaN")),NA,dt3$ilexMont)               
suppressWarnings(dt3$ilexMont <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt3$ilexMont))==as.character(as.numeric("NaN"))),NA,dt3$ilexMont))
dt3$piceRube <- ifelse((trimws(as.character(dt3$piceRube))==trimws("NaN")),NA,dt3$piceRube)               
suppressWarnings(dt3$piceRube <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt3$piceRube))==as.character(as.numeric("NaN"))),NA,dt3$piceRube))
dt3$piceRube_fruit <- ifelse((trimws(as.character(dt3$piceRube_fruit))==trimws("NaN")),NA,dt3$piceRube_fruit)               
suppressWarnings(dt3$piceRube_fruit <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt3$piceRube_fruit))==as.character(as.numeric("NaN"))),NA,dt3$piceRube_fruit))
dt3$piceRubeImma <- ifelse((trimws(as.character(dt3$piceRubeImma))==trimws("NaN")),NA,dt3$piceRubeImma)               
suppressWarnings(dt3$piceRubeImma <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt3$piceRubeImma))==as.character(as.numeric("NaN"))),NA,dt3$piceRubeImma))
dt3$prunSero <- ifelse((trimws(as.character(dt3$prunSero))==trimws("NaN")),NA,dt3$prunSero)               
suppressWarnings(dt3$prunSero <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt3$prunSero))==as.character(as.numeric("NaN"))),NA,dt3$prunSero))
dt3$rhodCata <- ifelse((trimws(as.character(dt3$rhodCata))==trimws("NaN")),NA,dt3$rhodCata)               
suppressWarnings(dt3$rhodCata <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt3$rhodCata))==as.character(as.numeric("NaN"))),NA,dt3$rhodCata))
dt3$sorbAmer <- ifelse((trimws(as.character(dt3$sorbAmer))==trimws("NaN")),NA,dt3$sorbAmer)               
suppressWarnings(dt3$sorbAmer <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt3$sorbAmer))==as.character(as.numeric("NaN"))),NA,dt3$sorbAmer))
dt3$sorbAmer_fruit <- ifelse((trimws(as.character(dt3$sorbAmer_fruit))==trimws("NaN")),NA,dt3$sorbAmer_fruit)               
suppressWarnings(dt3$sorbAmer_fruit <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt3$sorbAmer_fruit))==as.character(as.numeric("NaN"))),NA,dt3$sorbAmer_fruit))
dt3$unknUNKN <- ifelse((trimws(as.character(dt3$unknUNKN))==trimws("NaN")),NA,dt3$unknUNKN)               
suppressWarnings(dt3$unknUNKN <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt3$unknUNKN))==as.character(as.numeric("NaN"))),NA,dt3$unknUNKN))


# Here is the structure of the input data frame:
print("dt3) Structure")		    
str(dt3)                            
attach(dt3)                            
# The analyses below are basic descriptions of the variables. After testing, they should be replaced.                 

print(" ")
print("Summary of Site_Name")
print(summary(Site_Name))
print(" ")
print("Summary of trap_number")
print(summary(trap_number))
print(" ")
print("Summary of month")
print(summary(month))
print(" ")
print("Summary of day")
print(summary(day))
print(" ")
print("Summary of year")
print(summary(year))
print(" ")
print("Summary of abieFras")
print(summary(abieFras))
print(" ")
print("Summary of abieFras_fruit")
print(summary(abieFras_fruit))
print(" ")
print("Summary of acerPens")
print(summary(acerPens))
print(" ")
print("Summary of acerRubr")
print(summary(acerRubr))
print(" ")
print("Summary of acerSpic")
print(summary(acerSpic))
print(" ")
print("Summary of acerUNKN")
print(summary(acerUNKN))
print(" ")
print("Summary of betuLent")
print(summary(betuLent))
print(" ")
print("Summary of betuAlle")
print(summary(betuAlle))
print(" ")
print("Summary of betuUNKN")
print(summary(betuUNKN))
print(" ")
print("Summary of caryTome")
print(summary(caryTome))
print(" ")
print("Summary of cornFlor")
print(summary(cornFlor))
print(" ")
print("Summary of faguGran")
print(summary(faguGran))
print(" ")
print("Summary of fraxAmer")
print(summary(fraxAmer))
print(" ")
print("Summary of fraxPenn")
print(summary(fraxPenn))
print(" ")
print("Summary of ilexMont")
print(summary(ilexMont))
print(" ")
print("Summary of piceRube")
print(summary(piceRube))
print(" ")
print("Summary of piceRube_fruit")
print(summary(piceRube_fruit))
print(" ")
print("Summary of piceRubeImma")
print(summary(piceRubeImma))
print(" ")
print("Summary of prunSero")
print(summary(prunSero))
print(" ")
print("Summary of rhodCata")
print(summary(rhodCata))
print(" ")
print("Summary of sorbAmer")
print(summary(sorbAmer))
print(" ")
print("Summary of sorbAmer_fruit")
print(summary(sorbAmer_fruit))
print(" ")
print("Summary of unknUNKN")
print(summary(unknUNKN))
print(" ")
print("Summary of notes")
print(summary(notes)) 
# Get more details on character variables
                 

print(" ")
print("Summary of Site_Name")
print(summary(as.factor(dt3$Site_Name))) 

print(" ")
print("Summary of trap_number")
print(summary(as.factor(dt3$trap_number))) 

print(" ")
print("Summary of notes")
print(summary(as.factor(dt3$notes)))
detach(dt3)               
        
	      

inUrl4  <- "https://pasta.lternet.edu/package/data/eml/knb-lter-cwt/1047/14/7d97e2417c58c995235295f9a48b019d" 
infile4 <- tempfile()
try(download.file(inUrl4,infile4,method="curl",extra=paste0(' -A "',getOption("HTTPUserAgent"),'"')))
if (is.na(file.size(infile4))) download.file(inUrl4,infile4,method="auto")

                   
 dt4 <-read.csv(infile4,header=F 
          ,skip=1
            ,sep="\t"  
        , col.names=c(
                    "Site_Name",     
                    "ID",     
                    "tag",     
                    "species",     
                    "stem",     
                    "censinyr",     
                    "growinyr",     
                    "deathyr",     
                    "censoryr",     
                    "yrMIA",     
                    "postX",     
                    "postY",     
                    "localX",     
                    "localY",     
                    "x",     
                    "y",     
                    "UTM_Easting",     
                    "UTM_Northing",     
                    "elevation",     
                    "diam2011",     
                    "diam2014",     
                    "sex2011",     
                    "sex2014",     
                    "canopy2011",     
                    "canopy2014",     
                    "damage2010",     
                    "damage2011",     
                    "damage2014",     
                    "Notes2011",     
                    "Notes2014"    ), check.names=TRUE)
               
unlink(infile4)
		    
# Fix any interval or ratio columns mistakenly read in as nominal and nominal columns read as numeric or dates read as strings
                
if (class(dt4$Site_Name)!="factor") dt4$Site_Name<- as.factor(dt4$Site_Name)
if (class(dt4$ID)!="factor") dt4$ID<- as.factor(dt4$ID)
if (class(dt4$tag)!="factor") dt4$tag<- as.factor(dt4$tag)
if (class(dt4$species)!="factor") dt4$species<- as.factor(dt4$species)
if (class(dt4$stem)=="factor") dt4$stem <-as.numeric(levels(dt4$stem))[as.integer(dt4$stem) ]               
if (class(dt4$stem)=="character") dt4$stem <-as.numeric(dt4$stem)
if (class(dt4$postX)=="factor") dt4$postX <-as.numeric(levels(dt4$postX))[as.integer(dt4$postX) ]               
if (class(dt4$postX)=="character") dt4$postX <-as.numeric(dt4$postX)
if (class(dt4$postY)=="factor") dt4$postY <-as.numeric(levels(dt4$postY))[as.integer(dt4$postY) ]               
if (class(dt4$postY)=="character") dt4$postY <-as.numeric(dt4$postY)
if (class(dt4$localX)=="factor") dt4$localX <-as.numeric(levels(dt4$localX))[as.integer(dt4$localX) ]               
if (class(dt4$localX)=="character") dt4$localX <-as.numeric(dt4$localX)
if (class(dt4$localY)=="factor") dt4$localY <-as.numeric(levels(dt4$localY))[as.integer(dt4$localY) ]               
if (class(dt4$localY)=="character") dt4$localY <-as.numeric(dt4$localY)
if (class(dt4$x)=="factor") dt4$x <-as.numeric(levels(dt4$x))[as.integer(dt4$x) ]               
if (class(dt4$x)=="character") dt4$x <-as.numeric(dt4$x)
if (class(dt4$y)=="factor") dt4$y <-as.numeric(levels(dt4$y))[as.integer(dt4$y) ]               
if (class(dt4$y)=="character") dt4$y <-as.numeric(dt4$y)
if (class(dt4$UTM_Easting)=="factor") dt4$UTM_Easting <-as.numeric(levels(dt4$UTM_Easting))[as.integer(dt4$UTM_Easting) ]               
if (class(dt4$UTM_Easting)=="character") dt4$UTM_Easting <-as.numeric(dt4$UTM_Easting)
if (class(dt4$UTM_Northing)=="factor") dt4$UTM_Northing <-as.numeric(levels(dt4$UTM_Northing))[as.integer(dt4$UTM_Northing) ]               
if (class(dt4$UTM_Northing)=="character") dt4$UTM_Northing <-as.numeric(dt4$UTM_Northing)
if (class(dt4$elevation)=="factor") dt4$elevation <-as.numeric(levels(dt4$elevation))[as.integer(dt4$elevation) ]               
if (class(dt4$elevation)=="character") dt4$elevation <-as.numeric(dt4$elevation)
if (class(dt4$diam2011)=="factor") dt4$diam2011 <-as.numeric(levels(dt4$diam2011))[as.integer(dt4$diam2011) ]               
if (class(dt4$diam2011)=="character") dt4$diam2011 <-as.numeric(dt4$diam2011)
if (class(dt4$diam2014)=="factor") dt4$diam2014 <-as.numeric(levels(dt4$diam2014))[as.integer(dt4$diam2014) ]               
if (class(dt4$diam2014)=="character") dt4$diam2014 <-as.numeric(dt4$diam2014)
if (class(dt4$sex2011)!="factor") dt4$sex2011<- as.factor(dt4$sex2011)
if (class(dt4$sex2014)!="factor") dt4$sex2014<- as.factor(dt4$sex2014)
if (class(dt4$canopy2011)!="factor") dt4$canopy2011<- as.factor(dt4$canopy2011)
if (class(dt4$canopy2014)!="factor") dt4$canopy2014<- as.factor(dt4$canopy2014)
if (class(dt4$damage2010)!="factor") dt4$damage2010<- as.factor(dt4$damage2010)
if (class(dt4$damage2011)!="factor") dt4$damage2011<- as.factor(dt4$damage2011)
if (class(dt4$damage2014)!="factor") dt4$damage2014<- as.factor(dt4$damage2014)
if (class(dt4$Notes2011)!="factor") dt4$Notes2011<- as.factor(dt4$Notes2011)
if (class(dt4$Notes2014)!="factor") dt4$Notes2014<- as.factor(dt4$Notes2014)
                
# Convert Missing Values to NA for non-dates
                
dt4$tag <- as.factor(ifelse((trimws(as.character(dt4$tag))==trimws("NaN")),NA,as.character(dt4$tag)))
dt4$stem <- ifelse((trimws(as.character(dt4$stem))==trimws("NaN")),NA,dt4$stem)               
suppressWarnings(dt4$stem <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt4$stem))==as.character(as.numeric("NaN"))),NA,dt4$stem))
dt4$postX <- ifelse((trimws(as.character(dt4$postX))==trimws("NaN")),NA,dt4$postX)               
suppressWarnings(dt4$postX <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt4$postX))==as.character(as.numeric("NaN"))),NA,dt4$postX))
dt4$postY <- ifelse((trimws(as.character(dt4$postY))==trimws("NaN")),NA,dt4$postY)               
suppressWarnings(dt4$postY <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt4$postY))==as.character(as.numeric("NaN"))),NA,dt4$postY))
dt4$localX <- ifelse((trimws(as.character(dt4$localX))==trimws("NaN")),NA,dt4$localX)               
suppressWarnings(dt4$localX <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt4$localX))==as.character(as.numeric("NaN"))),NA,dt4$localX))
dt4$localY <- ifelse((trimws(as.character(dt4$localY))==trimws("NaN")),NA,dt4$localY)               
suppressWarnings(dt4$localY <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt4$localY))==as.character(as.numeric("NaN"))),NA,dt4$localY))
dt4$x <- ifelse((trimws(as.character(dt4$x))==trimws("NaN")),NA,dt4$x)               
suppressWarnings(dt4$x <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt4$x))==as.character(as.numeric("NaN"))),NA,dt4$x))
dt4$y <- ifelse((trimws(as.character(dt4$y))==trimws("NaN")),NA,dt4$y)               
suppressWarnings(dt4$y <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt4$y))==as.character(as.numeric("NaN"))),NA,dt4$y))
dt4$UTM_Easting <- ifelse((trimws(as.character(dt4$UTM_Easting))==trimws("NaN")),NA,dt4$UTM_Easting)               
suppressWarnings(dt4$UTM_Easting <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt4$UTM_Easting))==as.character(as.numeric("NaN"))),NA,dt4$UTM_Easting))
dt4$UTM_Northing <- ifelse((trimws(as.character(dt4$UTM_Northing))==trimws("NaN")),NA,dt4$UTM_Northing)               
suppressWarnings(dt4$UTM_Northing <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt4$UTM_Northing))==as.character(as.numeric("NaN"))),NA,dt4$UTM_Northing))
dt4$elevation <- ifelse((trimws(as.character(dt4$elevation))==trimws("NaN")),NA,dt4$elevation)               
suppressWarnings(dt4$elevation <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt4$elevation))==as.character(as.numeric("NaN"))),NA,dt4$elevation))
dt4$diam2011 <- ifelse((trimws(as.character(dt4$diam2011))==trimws("NaN")),NA,dt4$diam2011)               
suppressWarnings(dt4$diam2011 <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt4$diam2011))==as.character(as.numeric("NaN"))),NA,dt4$diam2011))
dt4$diam2014 <- ifelse((trimws(as.character(dt4$diam2014))==trimws("NaN")),NA,dt4$diam2014)               
suppressWarnings(dt4$diam2014 <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt4$diam2014))==as.character(as.numeric("NaN"))),NA,dt4$diam2014))


# Here is the structure of the input data frame:
print("dt4) Structure")		    
str(dt4)                            
attach(dt4)                            
# The analyses below are basic descriptions of the variables. After testing, they should be replaced.                 

print(" ")
print("Summary of Site_Name")
print(summary(Site_Name))
print(" ")
print("Summary of ID")
print(summary(ID))
print(" ")
print("Summary of tag")
print(summary(tag))
print(" ")
print("Summary of species")
print(summary(species))
print(" ")
print("Summary of stem")
print(summary(stem))
print(" ")
print("Summary of censinyr")
print(summary(censinyr))
print(" ")
print("Summary of growinyr")
print(summary(growinyr))
print(" ")
print("Summary of deathyr")
print(summary(deathyr))
print(" ")
print("Summary of censoryr")
print(summary(censoryr))
print(" ")
print("Summary of yrMIA")
print(summary(yrMIA))
print(" ")
print("Summary of postX")
print(summary(postX))
print(" ")
print("Summary of postY")
print(summary(postY))
print(" ")
print("Summary of localX")
print(summary(localX))
print(" ")
print("Summary of localY")
print(summary(localY))
print(" ")
print("Summary of x")
print(summary(x))
print(" ")
print("Summary of y")
print(summary(y))
print(" ")
print("Summary of UTM_Easting")
print(summary(UTM_Easting))
print(" ")
print("Summary of UTM_Northing")
print(summary(UTM_Northing))
print(" ")
print("Summary of elevation")
print(summary(elevation))
print(" ")
print("Summary of diam2011")
print(summary(diam2011))
print(" ")
print("Summary of diam2014")
print(summary(diam2014))
print(" ")
print("Summary of sex2011")
print(summary(sex2011))
print(" ")
print("Summary of sex2014")
print(summary(sex2014))
print(" ")
print("Summary of canopy2011")
print(summary(canopy2011))
print(" ")
print("Summary of canopy2014")
print(summary(canopy2014))
print(" ")
print("Summary of damage2010")
print(summary(damage2010))
print(" ")
print("Summary of damage2011")
print(summary(damage2011))
print(" ")
print("Summary of damage2014")
print(summary(damage2014))
print(" ")
print("Summary of Notes2011")
print(summary(Notes2011))
print(" ")
print("Summary of Notes2014")
print(summary(Notes2014)) 
# Get more details on character variables
                 

print(" ")
print("Summary of Site_Name")
print(summary(as.factor(dt4$Site_Name))) 

print(" ")
print("Summary of ID")
print(summary(as.factor(dt4$ID))) 

print(" ")
print("Summary of tag")
print(summary(as.factor(dt4$tag))) 

print(" ")
print("Summary of species")
print(summary(as.factor(dt4$species))) 

print(" ")
print("Summary of sex2011")
print(summary(as.factor(dt4$sex2011))) 

print(" ")
print("Summary of sex2014")
print(summary(as.factor(dt4$sex2014))) 

print(" ")
print("Summary of canopy2011")
print(summary(as.factor(dt4$canopy2011))) 

print(" ")
print("Summary of canopy2014")
print(summary(as.factor(dt4$canopy2014))) 

print(" ")
print("Summary of damage2010")
print(summary(as.factor(dt4$damage2010))) 

print(" ")
print("Summary of damage2011")
print(summary(as.factor(dt4$damage2011))) 

print(" ")
print("Summary of damage2014")
print(summary(as.factor(dt4$damage2014))) 

print(" ")
print("Summary of Notes2011")
print(summary(as.factor(dt4$Notes2011))) 

print(" ")
print("Summary of Notes2014")
print(summary(as.factor(dt4$Notes2014)))
detach(dt4)               
        
	      

inUrl5  <- "https://pasta.lternet.edu/package/data/eml/knb-lter-cwt/1047/14/9ecffdb611eb6a352282898302beae0e" 
infile5 <- tempfile()
try(download.file(inUrl5,infile5,method="curl",extra=paste0(' -A "',getOption("HTTPUserAgent"),'"')))
if (is.na(file.size(infile5))) download.file(inUrl5,infile5,method="auto")

                   
 dt5 <-read.csv(infile5,header=F 
          ,skip=1
            ,sep="\t"  
        , col.names=c(
                    "Site_Name",     
                    "trap_number",     
                    "month",     
                    "day",     
                    "year",     
                    "acerPens",     
                    "acerRubr",     
                    "acerSacc",     
                    "acerSpic",     
                    "amelLaev",     
                    "betuLent",     
                    "caryTome",     
                    "cornAlte",     
                    "cornFlor",     
                    "faguGran",     
                    "fraxAmer",     
                    "fraxPenn",     
                    "kalmLati",     
                    "liriTuli",     
                    "magnTrip",     
                    "oxydArbo",     
                    "prunSero",     
                    "querAlba",     
                    "querCocc",     
                    "querMich",     
                    "querPrin",     
                    "querRubr",     
                    "querVelu",     
                    "querUnkn",     
                    "querImma",     
                    "rhodCata",     
                    "robiPseu",     
                    "robiPseu_fruit",     
                    "tiliAmer",     
                    "tsugCana",     
                    "tsugCana_fruit",     
                    "sorbAmer",     
                    "sorbAmer_fruit",     
                    "unknUNKN",     
                    "notes"    ), check.names=TRUE)
               
unlink(infile5)
		    
# Fix any interval or ratio columns mistakenly read in as nominal and nominal columns read as numeric or dates read as strings
                
if (class(dt5$Site_Name)!="factor") dt5$Site_Name<- as.factor(dt5$Site_Name)
if (class(dt5$trap_number)!="factor") dt5$trap_number<- as.factor(dt5$trap_number)
if (class(dt5$acerPens)=="factor") dt5$acerPens <-as.numeric(levels(dt5$acerPens))[as.integer(dt5$acerPens) ]               
if (class(dt5$acerPens)=="character") dt5$acerPens <-as.numeric(dt5$acerPens)
if (class(dt5$acerRubr)=="factor") dt5$acerRubr <-as.numeric(levels(dt5$acerRubr))[as.integer(dt5$acerRubr) ]               
if (class(dt5$acerRubr)=="character") dt5$acerRubr <-as.numeric(dt5$acerRubr)
if (class(dt5$acerSacc)=="factor") dt5$acerSacc <-as.numeric(levels(dt5$acerSacc))[as.integer(dt5$acerSacc) ]               
if (class(dt5$acerSacc)=="character") dt5$acerSacc <-as.numeric(dt5$acerSacc)
if (class(dt5$acerSpic)=="factor") dt5$acerSpic <-as.numeric(levels(dt5$acerSpic))[as.integer(dt5$acerSpic) ]               
if (class(dt5$acerSpic)=="character") dt5$acerSpic <-as.numeric(dt5$acerSpic)
if (class(dt5$amelLaev)=="factor") dt5$amelLaev <-as.numeric(levels(dt5$amelLaev))[as.integer(dt5$amelLaev) ]               
if (class(dt5$amelLaev)=="character") dt5$amelLaev <-as.numeric(dt5$amelLaev)
if (class(dt5$betuLent)=="factor") dt5$betuLent <-as.numeric(levels(dt5$betuLent))[as.integer(dt5$betuLent) ]               
if (class(dt5$betuLent)=="character") dt5$betuLent <-as.numeric(dt5$betuLent)
if (class(dt5$caryTome)=="factor") dt5$caryTome <-as.numeric(levels(dt5$caryTome))[as.integer(dt5$caryTome) ]               
if (class(dt5$caryTome)=="character") dt5$caryTome <-as.numeric(dt5$caryTome)
if (class(dt5$cornAlte)=="factor") dt5$cornAlte <-as.numeric(levels(dt5$cornAlte))[as.integer(dt5$cornAlte) ]               
if (class(dt5$cornAlte)=="character") dt5$cornAlte <-as.numeric(dt5$cornAlte)
if (class(dt5$cornFlor)=="factor") dt5$cornFlor <-as.numeric(levels(dt5$cornFlor))[as.integer(dt5$cornFlor) ]               
if (class(dt5$cornFlor)=="character") dt5$cornFlor <-as.numeric(dt5$cornFlor)
if (class(dt5$faguGran)=="factor") dt5$faguGran <-as.numeric(levels(dt5$faguGran))[as.integer(dt5$faguGran) ]               
if (class(dt5$faguGran)=="character") dt5$faguGran <-as.numeric(dt5$faguGran)
if (class(dt5$fraxAmer)=="factor") dt5$fraxAmer <-as.numeric(levels(dt5$fraxAmer))[as.integer(dt5$fraxAmer) ]               
if (class(dt5$fraxAmer)=="character") dt5$fraxAmer <-as.numeric(dt5$fraxAmer)
if (class(dt5$fraxPenn)=="factor") dt5$fraxPenn <-as.numeric(levels(dt5$fraxPenn))[as.integer(dt5$fraxPenn) ]               
if (class(dt5$fraxPenn)=="character") dt5$fraxPenn <-as.numeric(dt5$fraxPenn)
if (class(dt5$kalmLati)=="factor") dt5$kalmLati <-as.numeric(levels(dt5$kalmLati))[as.integer(dt5$kalmLati) ]               
if (class(dt5$kalmLati)=="character") dt5$kalmLati <-as.numeric(dt5$kalmLati)
if (class(dt5$liriTuli)=="factor") dt5$liriTuli <-as.numeric(levels(dt5$liriTuli))[as.integer(dt5$liriTuli) ]               
if (class(dt5$liriTuli)=="character") dt5$liriTuli <-as.numeric(dt5$liriTuli)
if (class(dt5$magnTrip)=="factor") dt5$magnTrip <-as.numeric(levels(dt5$magnTrip))[as.integer(dt5$magnTrip) ]               
if (class(dt5$magnTrip)=="character") dt5$magnTrip <-as.numeric(dt5$magnTrip)
if (class(dt5$oxydArbo)=="factor") dt5$oxydArbo <-as.numeric(levels(dt5$oxydArbo))[as.integer(dt5$oxydArbo) ]               
if (class(dt5$oxydArbo)=="character") dt5$oxydArbo <-as.numeric(dt5$oxydArbo)
if (class(dt5$prunSero)=="factor") dt5$prunSero <-as.numeric(levels(dt5$prunSero))[as.integer(dt5$prunSero) ]               
if (class(dt5$prunSero)=="character") dt5$prunSero <-as.numeric(dt5$prunSero)
if (class(dt5$querAlba)=="factor") dt5$querAlba <-as.numeric(levels(dt5$querAlba))[as.integer(dt5$querAlba) ]               
if (class(dt5$querAlba)=="character") dt5$querAlba <-as.numeric(dt5$querAlba)
if (class(dt5$querCocc)=="factor") dt5$querCocc <-as.numeric(levels(dt5$querCocc))[as.integer(dt5$querCocc) ]               
if (class(dt5$querCocc)=="character") dt5$querCocc <-as.numeric(dt5$querCocc)
if (class(dt5$querMich)=="factor") dt5$querMich <-as.numeric(levels(dt5$querMich))[as.integer(dt5$querMich) ]               
if (class(dt5$querMich)=="character") dt5$querMich <-as.numeric(dt5$querMich)
if (class(dt5$querPrin)=="factor") dt5$querPrin <-as.numeric(levels(dt5$querPrin))[as.integer(dt5$querPrin) ]               
if (class(dt5$querPrin)=="character") dt5$querPrin <-as.numeric(dt5$querPrin)
if (class(dt5$querRubr)=="factor") dt5$querRubr <-as.numeric(levels(dt5$querRubr))[as.integer(dt5$querRubr) ]               
if (class(dt5$querRubr)=="character") dt5$querRubr <-as.numeric(dt5$querRubr)
if (class(dt5$querVelu)=="factor") dt5$querVelu <-as.numeric(levels(dt5$querVelu))[as.integer(dt5$querVelu) ]               
if (class(dt5$querVelu)=="character") dt5$querVelu <-as.numeric(dt5$querVelu)
if (class(dt5$querUnkn)=="factor") dt5$querUnkn <-as.numeric(levels(dt5$querUnkn))[as.integer(dt5$querUnkn) ]               
if (class(dt5$querUnkn)=="character") dt5$querUnkn <-as.numeric(dt5$querUnkn)
if (class(dt5$querImma)=="factor") dt5$querImma <-as.numeric(levels(dt5$querImma))[as.integer(dt5$querImma) ]               
if (class(dt5$querImma)=="character") dt5$querImma <-as.numeric(dt5$querImma)
if (class(dt5$rhodCata)=="factor") dt5$rhodCata <-as.numeric(levels(dt5$rhodCata))[as.integer(dt5$rhodCata) ]               
if (class(dt5$rhodCata)=="character") dt5$rhodCata <-as.numeric(dt5$rhodCata)
if (class(dt5$robiPseu)=="factor") dt5$robiPseu <-as.numeric(levels(dt5$robiPseu))[as.integer(dt5$robiPseu) ]               
if (class(dt5$robiPseu)=="character") dt5$robiPseu <-as.numeric(dt5$robiPseu)
if (class(dt5$robiPseu_fruit)=="factor") dt5$robiPseu_fruit <-as.numeric(levels(dt5$robiPseu_fruit))[as.integer(dt5$robiPseu_fruit) ]               
if (class(dt5$robiPseu_fruit)=="character") dt5$robiPseu_fruit <-as.numeric(dt5$robiPseu_fruit)
if (class(dt5$tiliAmer)=="factor") dt5$tiliAmer <-as.numeric(levels(dt5$tiliAmer))[as.integer(dt5$tiliAmer) ]               
if (class(dt5$tiliAmer)=="character") dt5$tiliAmer <-as.numeric(dt5$tiliAmer)
if (class(dt5$tsugCana)=="factor") dt5$tsugCana <-as.numeric(levels(dt5$tsugCana))[as.integer(dt5$tsugCana) ]               
if (class(dt5$tsugCana)=="character") dt5$tsugCana <-as.numeric(dt5$tsugCana)
if (class(dt5$tsugCana_fruit)=="factor") dt5$tsugCana_fruit <-as.numeric(levels(dt5$tsugCana_fruit))[as.integer(dt5$tsugCana_fruit) ]               
if (class(dt5$tsugCana_fruit)=="character") dt5$tsugCana_fruit <-as.numeric(dt5$tsugCana_fruit)
if (class(dt5$sorbAmer)=="factor") dt5$sorbAmer <-as.numeric(levels(dt5$sorbAmer))[as.integer(dt5$sorbAmer) ]               
if (class(dt5$sorbAmer)=="character") dt5$sorbAmer <-as.numeric(dt5$sorbAmer)
if (class(dt5$sorbAmer_fruit)=="factor") dt5$sorbAmer_fruit <-as.numeric(levels(dt5$sorbAmer_fruit))[as.integer(dt5$sorbAmer_fruit) ]               
if (class(dt5$sorbAmer_fruit)=="character") dt5$sorbAmer_fruit <-as.numeric(dt5$sorbAmer_fruit)
if (class(dt5$unknUNKN)=="factor") dt5$unknUNKN <-as.numeric(levels(dt5$unknUNKN))[as.integer(dt5$unknUNKN) ]               
if (class(dt5$unknUNKN)=="character") dt5$unknUNKN <-as.numeric(dt5$unknUNKN)
if (class(dt5$notes)!="factor") dt5$notes<- as.factor(dt5$notes)
                
# Convert Missing Values to NA for non-dates
                
dt5$trap_number <- as.factor(ifelse((trimws(as.character(dt5$trap_number))==trimws("NaN")),NA,as.character(dt5$trap_number)))
dt5$acerPens <- ifelse((trimws(as.character(dt5$acerPens))==trimws("NaN")),NA,dt5$acerPens)               
suppressWarnings(dt5$acerPens <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt5$acerPens))==as.character(as.numeric("NaN"))),NA,dt5$acerPens))
dt5$acerRubr <- ifelse((trimws(as.character(dt5$acerRubr))==trimws("NaN")),NA,dt5$acerRubr)               
suppressWarnings(dt5$acerRubr <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt5$acerRubr))==as.character(as.numeric("NaN"))),NA,dt5$acerRubr))
dt5$acerSacc <- ifelse((trimws(as.character(dt5$acerSacc))==trimws("NaN")),NA,dt5$acerSacc)               
suppressWarnings(dt5$acerSacc <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt5$acerSacc))==as.character(as.numeric("NaN"))),NA,dt5$acerSacc))
dt5$acerSpic <- ifelse((trimws(as.character(dt5$acerSpic))==trimws("NaN")),NA,dt5$acerSpic)               
suppressWarnings(dt5$acerSpic <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt5$acerSpic))==as.character(as.numeric("NaN"))),NA,dt5$acerSpic))
dt5$amelLaev <- ifelse((trimws(as.character(dt5$amelLaev))==trimws("NaN")),NA,dt5$amelLaev)               
suppressWarnings(dt5$amelLaev <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt5$amelLaev))==as.character(as.numeric("NaN"))),NA,dt5$amelLaev))
dt5$betuLent <- ifelse((trimws(as.character(dt5$betuLent))==trimws("NaN")),NA,dt5$betuLent)               
suppressWarnings(dt5$betuLent <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt5$betuLent))==as.character(as.numeric("NaN"))),NA,dt5$betuLent))
dt5$caryTome <- ifelse((trimws(as.character(dt5$caryTome))==trimws("NaN")),NA,dt5$caryTome)               
suppressWarnings(dt5$caryTome <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt5$caryTome))==as.character(as.numeric("NaN"))),NA,dt5$caryTome))
dt5$cornAlte <- ifelse((trimws(as.character(dt5$cornAlte))==trimws("NaN")),NA,dt5$cornAlte)               
suppressWarnings(dt5$cornAlte <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt5$cornAlte))==as.character(as.numeric("NaN"))),NA,dt5$cornAlte))
dt5$cornFlor <- ifelse((trimws(as.character(dt5$cornFlor))==trimws("NaN")),NA,dt5$cornFlor)               
suppressWarnings(dt5$cornFlor <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt5$cornFlor))==as.character(as.numeric("NaN"))),NA,dt5$cornFlor))
dt5$faguGran <- ifelse((trimws(as.character(dt5$faguGran))==trimws("NaN")),NA,dt5$faguGran)               
suppressWarnings(dt5$faguGran <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt5$faguGran))==as.character(as.numeric("NaN"))),NA,dt5$faguGran))
dt5$fraxAmer <- ifelse((trimws(as.character(dt5$fraxAmer))==trimws("NaN")),NA,dt5$fraxAmer)               
suppressWarnings(dt5$fraxAmer <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt5$fraxAmer))==as.character(as.numeric("NaN"))),NA,dt5$fraxAmer))
dt5$fraxPenn <- ifelse((trimws(as.character(dt5$fraxPenn))==trimws("NaN")),NA,dt5$fraxPenn)               
suppressWarnings(dt5$fraxPenn <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt5$fraxPenn))==as.character(as.numeric("NaN"))),NA,dt5$fraxPenn))
dt5$kalmLati <- ifelse((trimws(as.character(dt5$kalmLati))==trimws("NaN")),NA,dt5$kalmLati)               
suppressWarnings(dt5$kalmLati <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt5$kalmLati))==as.character(as.numeric("NaN"))),NA,dt5$kalmLati))
dt5$liriTuli <- ifelse((trimws(as.character(dt5$liriTuli))==trimws("NaN")),NA,dt5$liriTuli)               
suppressWarnings(dt5$liriTuli <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt5$liriTuli))==as.character(as.numeric("NaN"))),NA,dt5$liriTuli))
dt5$magnTrip <- ifelse((trimws(as.character(dt5$magnTrip))==trimws("NaN")),NA,dt5$magnTrip)               
suppressWarnings(dt5$magnTrip <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt5$magnTrip))==as.character(as.numeric("NaN"))),NA,dt5$magnTrip))
dt5$oxydArbo <- ifelse((trimws(as.character(dt5$oxydArbo))==trimws("NaN")),NA,dt5$oxydArbo)               
suppressWarnings(dt5$oxydArbo <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt5$oxydArbo))==as.character(as.numeric("NaN"))),NA,dt5$oxydArbo))
dt5$prunSero <- ifelse((trimws(as.character(dt5$prunSero))==trimws("NaN")),NA,dt5$prunSero)               
suppressWarnings(dt5$prunSero <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt5$prunSero))==as.character(as.numeric("NaN"))),NA,dt5$prunSero))
dt5$querAlba <- ifelse((trimws(as.character(dt5$querAlba))==trimws("NaN")),NA,dt5$querAlba)               
suppressWarnings(dt5$querAlba <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt5$querAlba))==as.character(as.numeric("NaN"))),NA,dt5$querAlba))
dt5$querCocc <- ifelse((trimws(as.character(dt5$querCocc))==trimws("NaN")),NA,dt5$querCocc)               
suppressWarnings(dt5$querCocc <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt5$querCocc))==as.character(as.numeric("NaN"))),NA,dt5$querCocc))
dt5$querMich <- ifelse((trimws(as.character(dt5$querMich))==trimws("NaN")),NA,dt5$querMich)               
suppressWarnings(dt5$querMich <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt5$querMich))==as.character(as.numeric("NaN"))),NA,dt5$querMich))
dt5$querPrin <- ifelse((trimws(as.character(dt5$querPrin))==trimws("NaN")),NA,dt5$querPrin)               
suppressWarnings(dt5$querPrin <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt5$querPrin))==as.character(as.numeric("NaN"))),NA,dt5$querPrin))
dt5$querRubr <- ifelse((trimws(as.character(dt5$querRubr))==trimws("NaN")),NA,dt5$querRubr)               
suppressWarnings(dt5$querRubr <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt5$querRubr))==as.character(as.numeric("NaN"))),NA,dt5$querRubr))
dt5$querVelu <- ifelse((trimws(as.character(dt5$querVelu))==trimws("NaN")),NA,dt5$querVelu)               
suppressWarnings(dt5$querVelu <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt5$querVelu))==as.character(as.numeric("NaN"))),NA,dt5$querVelu))
dt5$querUnkn <- ifelse((trimws(as.character(dt5$querUnkn))==trimws("NaN")),NA,dt5$querUnkn)               
suppressWarnings(dt5$querUnkn <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt5$querUnkn))==as.character(as.numeric("NaN"))),NA,dt5$querUnkn))
dt5$querImma <- ifelse((trimws(as.character(dt5$querImma))==trimws("NaN")),NA,dt5$querImma)               
suppressWarnings(dt5$querImma <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt5$querImma))==as.character(as.numeric("NaN"))),NA,dt5$querImma))
dt5$rhodCata <- ifelse((trimws(as.character(dt5$rhodCata))==trimws("NaN")),NA,dt5$rhodCata)               
suppressWarnings(dt5$rhodCata <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt5$rhodCata))==as.character(as.numeric("NaN"))),NA,dt5$rhodCata))
dt5$robiPseu <- ifelse((trimws(as.character(dt5$robiPseu))==trimws("NaN")),NA,dt5$robiPseu)               
suppressWarnings(dt5$robiPseu <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt5$robiPseu))==as.character(as.numeric("NaN"))),NA,dt5$robiPseu))
dt5$robiPseu_fruit <- ifelse((trimws(as.character(dt5$robiPseu_fruit))==trimws("NaN")),NA,dt5$robiPseu_fruit)               
suppressWarnings(dt5$robiPseu_fruit <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt5$robiPseu_fruit))==as.character(as.numeric("NaN"))),NA,dt5$robiPseu_fruit))
dt5$tiliAmer <- ifelse((trimws(as.character(dt5$tiliAmer))==trimws("NaN")),NA,dt5$tiliAmer)               
suppressWarnings(dt5$tiliAmer <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt5$tiliAmer))==as.character(as.numeric("NaN"))),NA,dt5$tiliAmer))
dt5$tsugCana <- ifelse((trimws(as.character(dt5$tsugCana))==trimws("NaN")),NA,dt5$tsugCana)               
suppressWarnings(dt5$tsugCana <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt5$tsugCana))==as.character(as.numeric("NaN"))),NA,dt5$tsugCana))
dt5$tsugCana_fruit <- ifelse((trimws(as.character(dt5$tsugCana_fruit))==trimws("NaN")),NA,dt5$tsugCana_fruit)               
suppressWarnings(dt5$tsugCana_fruit <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt5$tsugCana_fruit))==as.character(as.numeric("NaN"))),NA,dt5$tsugCana_fruit))
dt5$sorbAmer <- ifelse((trimws(as.character(dt5$sorbAmer))==trimws("NaN")),NA,dt5$sorbAmer)               
suppressWarnings(dt5$sorbAmer <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt5$sorbAmer))==as.character(as.numeric("NaN"))),NA,dt5$sorbAmer))
dt5$sorbAmer_fruit <- ifelse((trimws(as.character(dt5$sorbAmer_fruit))==trimws("NaN")),NA,dt5$sorbAmer_fruit)               
suppressWarnings(dt5$sorbAmer_fruit <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt5$sorbAmer_fruit))==as.character(as.numeric("NaN"))),NA,dt5$sorbAmer_fruit))
dt5$unknUNKN <- ifelse((trimws(as.character(dt5$unknUNKN))==trimws("NaN")),NA,dt5$unknUNKN)               
suppressWarnings(dt5$unknUNKN <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt5$unknUNKN))==as.character(as.numeric("NaN"))),NA,dt5$unknUNKN))


# Here is the structure of the input data frame:
print("dt5) Structure")		    
str(dt5)                            
attach(dt5)                            
# The analyses below are basic descriptions of the variables. After testing, they should be replaced.                 

print(" ")
print("Summary of Site_Name")
print(summary(Site_Name))
print(" ")
print("Summary of trap_number")
print(summary(trap_number))
print(" ")
print("Summary of month")
print(summary(month))
print(" ")
print("Summary of day")
print(summary(day))
print(" ")
print("Summary of year")
print(summary(year))
print(" ")
print("Summary of acerPens")
print(summary(acerPens))
print(" ")
print("Summary of acerRubr")
print(summary(acerRubr))
print(" ")
print("Summary of acerSacc")
print(summary(acerSacc))
print(" ")
print("Summary of acerSpic")
print(summary(acerSpic))
print(" ")
print("Summary of amelLaev")
print(summary(amelLaev))
print(" ")
print("Summary of betuLent")
print(summary(betuLent))
print(" ")
print("Summary of caryTome")
print(summary(caryTome))
print(" ")
print("Summary of cornAlte")
print(summary(cornAlte))
print(" ")
print("Summary of cornFlor")
print(summary(cornFlor))
print(" ")
print("Summary of faguGran")
print(summary(faguGran))
print(" ")
print("Summary of fraxAmer")
print(summary(fraxAmer))
print(" ")
print("Summary of fraxPenn")
print(summary(fraxPenn))
print(" ")
print("Summary of kalmLati")
print(summary(kalmLati))
print(" ")
print("Summary of liriTuli")
print(summary(liriTuli))
print(" ")
print("Summary of magnTrip")
print(summary(magnTrip))
print(" ")
print("Summary of oxydArbo")
print(summary(oxydArbo))
print(" ")
print("Summary of prunSero")
print(summary(prunSero))
print(" ")
print("Summary of querAlba")
print(summary(querAlba))
print(" ")
print("Summary of querCocc")
print(summary(querCocc))
print(" ")
print("Summary of querMich")
print(summary(querMich))
print(" ")
print("Summary of querPrin")
print(summary(querPrin))
print(" ")
print("Summary of querRubr")
print(summary(querRubr))
print(" ")
print("Summary of querVelu")
print(summary(querVelu))
print(" ")
print("Summary of querUnkn")
print(summary(querUnkn))
print(" ")
print("Summary of querImma")
print(summary(querImma))
print(" ")
print("Summary of rhodCata")
print(summary(rhodCata))
print(" ")
print("Summary of robiPseu")
print(summary(robiPseu))
print(" ")
print("Summary of robiPseu_fruit")
print(summary(robiPseu_fruit))
print(" ")
print("Summary of tiliAmer")
print(summary(tiliAmer))
print(" ")
print("Summary of tsugCana")
print(summary(tsugCana))
print(" ")
print("Summary of tsugCana_fruit")
print(summary(tsugCana_fruit))
print(" ")
print("Summary of sorbAmer")
print(summary(sorbAmer))
print(" ")
print("Summary of sorbAmer_fruit")
print(summary(sorbAmer_fruit))
print(" ")
print("Summary of unknUNKN")
print(summary(unknUNKN))
print(" ")
print("Summary of notes")
print(summary(notes)) 
# Get more details on character variables
                 

print(" ")
print("Summary of Site_Name")
print(summary(as.factor(dt5$Site_Name))) 

print(" ")
print("Summary of trap_number")
print(summary(as.factor(dt5$trap_number))) 

print(" ")
print("Summary of notes")
print(summary(as.factor(dt5$notes)))
detach(dt5)               
        
	      

inUrl6  <- "https://pasta.lternet.edu/package/data/eml/knb-lter-cwt/1047/14/d639ce002a3a878c505b6f7faab93889" 
infile6 <- tempfile()
try(download.file(inUrl6,infile6,method="curl",extra=paste0(' -A "',getOption("HTTPUserAgent"),'"')))
if (is.na(file.size(infile6))) download.file(inUrl6,infile6,method="auto")

                   
 dt6 <-read.csv(infile6,header=F 
          ,skip=1
            ,sep="\t"  
        , col.names=c(
                    "Site_Name",     
                    "ID",     
                    "tag",     
                    "species",     
                    "stem",     
                    "censinyr",     
                    "growinyr",     
                    "deathyr",     
                    "censoryr",     
                    "yrMIA",     
                    "postX",     
                    "postY",     
                    "localX",     
                    "localY",     
                    "x",     
                    "y",     
                    "UTM_Easting",     
                    "UTM_Northing",     
                    "elevation",     
                    "diam2011",     
                    "diam2014",     
                    "sex2011",     
                    "sex2014",     
                    "canopy2011",     
                    "canopy2014",     
                    "damage2010",     
                    "damage2011",     
                    "damage2014",     
                    "Notes2011",     
                    "Notes2014"    ), check.names=TRUE)
               
unlink(infile6)
		    
# Fix any interval or ratio columns mistakenly read in as nominal and nominal columns read as numeric or dates read as strings
                
if (class(dt6$Site_Name)!="factor") dt6$Site_Name<- as.factor(dt6$Site_Name)
if (class(dt6$ID)=="factor") dt6$ID <-as.numeric(levels(dt6$ID))[as.integer(dt6$ID) ]               
if (class(dt6$ID)=="character") dt6$ID <-as.numeric(dt6$ID)
if (class(dt6$tag)!="factor") dt6$tag<- as.factor(dt6$tag)
if (class(dt6$species)!="factor") dt6$species<- as.factor(dt6$species)
if (class(dt6$stem)=="factor") dt6$stem <-as.numeric(levels(dt6$stem))[as.integer(dt6$stem) ]               
if (class(dt6$stem)=="character") dt6$stem <-as.numeric(dt6$stem)
if (class(dt6$postX)=="factor") dt6$postX <-as.numeric(levels(dt6$postX))[as.integer(dt6$postX) ]               
if (class(dt6$postX)=="character") dt6$postX <-as.numeric(dt6$postX)
if (class(dt6$postY)=="factor") dt6$postY <-as.numeric(levels(dt6$postY))[as.integer(dt6$postY) ]               
if (class(dt6$postY)=="character") dt6$postY <-as.numeric(dt6$postY)
if (class(dt6$localX)=="factor") dt6$localX <-as.numeric(levels(dt6$localX))[as.integer(dt6$localX) ]               
if (class(dt6$localX)=="character") dt6$localX <-as.numeric(dt6$localX)
if (class(dt6$localY)=="factor") dt6$localY <-as.numeric(levels(dt6$localY))[as.integer(dt6$localY) ]               
if (class(dt6$localY)=="character") dt6$localY <-as.numeric(dt6$localY)
if (class(dt6$x)=="factor") dt6$x <-as.numeric(levels(dt6$x))[as.integer(dt6$x) ]               
if (class(dt6$x)=="character") dt6$x <-as.numeric(dt6$x)
if (class(dt6$y)=="factor") dt6$y <-as.numeric(levels(dt6$y))[as.integer(dt6$y) ]               
if (class(dt6$y)=="character") dt6$y <-as.numeric(dt6$y)
if (class(dt6$UTM_Easting)=="factor") dt6$UTM_Easting <-as.numeric(levels(dt6$UTM_Easting))[as.integer(dt6$UTM_Easting) ]               
if (class(dt6$UTM_Easting)=="character") dt6$UTM_Easting <-as.numeric(dt6$UTM_Easting)
if (class(dt6$UTM_Northing)=="factor") dt6$UTM_Northing <-as.numeric(levels(dt6$UTM_Northing))[as.integer(dt6$UTM_Northing) ]               
if (class(dt6$UTM_Northing)=="character") dt6$UTM_Northing <-as.numeric(dt6$UTM_Northing)
if (class(dt6$elevation)=="factor") dt6$elevation <-as.numeric(levels(dt6$elevation))[as.integer(dt6$elevation) ]               
if (class(dt6$elevation)=="character") dt6$elevation <-as.numeric(dt6$elevation)
if (class(dt6$diam2011)=="factor") dt6$diam2011 <-as.numeric(levels(dt6$diam2011))[as.integer(dt6$diam2011) ]               
if (class(dt6$diam2011)=="character") dt6$diam2011 <-as.numeric(dt6$diam2011)
if (class(dt6$diam2014)=="factor") dt6$diam2014 <-as.numeric(levels(dt6$diam2014))[as.integer(dt6$diam2014) ]               
if (class(dt6$diam2014)=="character") dt6$diam2014 <-as.numeric(dt6$diam2014)
if (class(dt6$sex2011)!="factor") dt6$sex2011<- as.factor(dt6$sex2011)
if (class(dt6$sex2014)!="factor") dt6$sex2014<- as.factor(dt6$sex2014)
if (class(dt6$canopy2011)!="factor") dt6$canopy2011<- as.factor(dt6$canopy2011)
if (class(dt6$canopy2014)!="factor") dt6$canopy2014<- as.factor(dt6$canopy2014)
if (class(dt6$damage2010)!="factor") dt6$damage2010<- as.factor(dt6$damage2010)
if (class(dt6$damage2011)!="factor") dt6$damage2011<- as.factor(dt6$damage2011)
if (class(dt6$damage2014)!="factor") dt6$damage2014<- as.factor(dt6$damage2014)
if (class(dt6$Notes2011)!="factor") dt6$Notes2011<- as.factor(dt6$Notes2011)
if (class(dt6$Notes2014)!="factor") dt6$Notes2014<- as.factor(dt6$Notes2014)
                
# Convert Missing Values to NA for non-dates
                
dt6$ID <- ifelse((trimws(as.character(dt6$ID))==trimws("NaN")),NA,dt6$ID)               
suppressWarnings(dt6$ID <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt6$ID))==as.character(as.numeric("NaN"))),NA,dt6$ID))
dt6$tag <- as.factor(ifelse((trimws(as.character(dt6$tag))==trimws("NaN")),NA,as.character(dt6$tag)))
dt6$stem <- ifelse((trimws(as.character(dt6$stem))==trimws("NaN")),NA,dt6$stem)               
suppressWarnings(dt6$stem <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt6$stem))==as.character(as.numeric("NaN"))),NA,dt6$stem))
dt6$postX <- ifelse((trimws(as.character(dt6$postX))==trimws("NaN")),NA,dt6$postX)               
suppressWarnings(dt6$postX <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt6$postX))==as.character(as.numeric("NaN"))),NA,dt6$postX))
dt6$postY <- ifelse((trimws(as.character(dt6$postY))==trimws("NaN")),NA,dt6$postY)               
suppressWarnings(dt6$postY <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt6$postY))==as.character(as.numeric("NaN"))),NA,dt6$postY))
dt6$localX <- ifelse((trimws(as.character(dt6$localX))==trimws("NaN")),NA,dt6$localX)               
suppressWarnings(dt6$localX <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt6$localX))==as.character(as.numeric("NaN"))),NA,dt6$localX))
dt6$localY <- ifelse((trimws(as.character(dt6$localY))==trimws("NaN")),NA,dt6$localY)               
suppressWarnings(dt6$localY <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt6$localY))==as.character(as.numeric("NaN"))),NA,dt6$localY))
dt6$x <- ifelse((trimws(as.character(dt6$x))==trimws("NaN")),NA,dt6$x)               
suppressWarnings(dt6$x <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt6$x))==as.character(as.numeric("NaN"))),NA,dt6$x))
dt6$y <- ifelse((trimws(as.character(dt6$y))==trimws("NaN")),NA,dt6$y)               
suppressWarnings(dt6$y <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt6$y))==as.character(as.numeric("NaN"))),NA,dt6$y))
dt6$UTM_Easting <- ifelse((trimws(as.character(dt6$UTM_Easting))==trimws("NaN")),NA,dt6$UTM_Easting)               
suppressWarnings(dt6$UTM_Easting <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt6$UTM_Easting))==as.character(as.numeric("NaN"))),NA,dt6$UTM_Easting))
dt6$UTM_Northing <- ifelse((trimws(as.character(dt6$UTM_Northing))==trimws("NaN")),NA,dt6$UTM_Northing)               
suppressWarnings(dt6$UTM_Northing <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt6$UTM_Northing))==as.character(as.numeric("NaN"))),NA,dt6$UTM_Northing))
dt6$elevation <- ifelse((trimws(as.character(dt6$elevation))==trimws("NaN")),NA,dt6$elevation)               
suppressWarnings(dt6$elevation <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt6$elevation))==as.character(as.numeric("NaN"))),NA,dt6$elevation))
dt6$diam2011 <- ifelse((trimws(as.character(dt6$diam2011))==trimws("NaN")),NA,dt6$diam2011)               
suppressWarnings(dt6$diam2011 <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt6$diam2011))==as.character(as.numeric("NaN"))),NA,dt6$diam2011))
dt6$diam2014 <- ifelse((trimws(as.character(dt6$diam2014))==trimws("NaN")),NA,dt6$diam2014)               
suppressWarnings(dt6$diam2014 <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt6$diam2014))==as.character(as.numeric("NaN"))),NA,dt6$diam2014))


# Here is the structure of the input data frame:
print("dt6) Structure")		    
str(dt6)                            
attach(dt6)                            
# The analyses below are basic descriptions of the variables. After testing, they should be replaced.                 

print(" ")
print("Summary of Site_Name")
print(summary(Site_Name))
print(" ")
print("Summary of ID")
print(summary(ID))
print(" ")
print("Summary of tag")
print(summary(tag))
print(" ")
print("Summary of species")
print(summary(species))
print(" ")
print("Summary of stem")
print(summary(stem))
print(" ")
print("Summary of censinyr")
print(summary(censinyr))
print(" ")
print("Summary of growinyr")
print(summary(growinyr))
print(" ")
print("Summary of deathyr")
print(summary(deathyr))
print(" ")
print("Summary of censoryr")
print(summary(censoryr))
print(" ")
print("Summary of yrMIA")
print(summary(yrMIA))
print(" ")
print("Summary of postX")
print(summary(postX))
print(" ")
print("Summary of postY")
print(summary(postY))
print(" ")
print("Summary of localX")
print(summary(localX))
print(" ")
print("Summary of localY")
print(summary(localY))
print(" ")
print("Summary of x")
print(summary(x))
print(" ")
print("Summary of y")
print(summary(y))
print(" ")
print("Summary of UTM_Easting")
print(summary(UTM_Easting))
print(" ")
print("Summary of UTM_Northing")
print(summary(UTM_Northing))
print(" ")
print("Summary of elevation")
print(summary(elevation))
print(" ")
print("Summary of diam2011")
print(summary(diam2011))
print(" ")
print("Summary of diam2014")
print(summary(diam2014))
print(" ")
print("Summary of sex2011")
print(summary(sex2011))
print(" ")
print("Summary of sex2014")
print(summary(sex2014))
print(" ")
print("Summary of canopy2011")
print(summary(canopy2011))
print(" ")
print("Summary of canopy2014")
print(summary(canopy2014))
print(" ")
print("Summary of damage2010")
print(summary(damage2010))
print(" ")
print("Summary of damage2011")
print(summary(damage2011))
print(" ")
print("Summary of damage2014")
print(summary(damage2014))
print(" ")
print("Summary of Notes2011")
print(summary(Notes2011))
print(" ")
print("Summary of Notes2014")
print(summary(Notes2014)) 
# Get more details on character variables
                 

print(" ")
print("Summary of Site_Name")
print(summary(as.factor(dt6$Site_Name))) 

print(" ")
print("Summary of tag")
print(summary(as.factor(dt6$tag))) 

print(" ")
print("Summary of species")
print(summary(as.factor(dt6$species))) 

print(" ")
print("Summary of sex2011")
print(summary(as.factor(dt6$sex2011))) 

print(" ")
print("Summary of sex2014")
print(summary(as.factor(dt6$sex2014))) 

print(" ")
print("Summary of canopy2011")
print(summary(as.factor(dt6$canopy2011))) 

print(" ")
print("Summary of canopy2014")
print(summary(as.factor(dt6$canopy2014))) 

print(" ")
print("Summary of damage2010")
print(summary(as.factor(dt6$damage2010))) 

print(" ")
print("Summary of damage2011")
print(summary(as.factor(dt6$damage2011))) 

print(" ")
print("Summary of damage2014")
print(summary(as.factor(dt6$damage2014))) 

print(" ")
print("Summary of Notes2011")
print(summary(as.factor(dt6$Notes2011))) 

print(" ")
print("Summary of Notes2014")
print(summary(as.factor(dt6$Notes2014)))
detach(dt6)               
        
	      

inUrl7  <- "https://pasta.lternet.edu/package/data/eml/knb-lter-cwt/1047/14/27c26e81647add5dbc086a7b4ee12c16" 
infile7 <- tempfile()
try(download.file(inUrl7,infile7,method="curl",extra=paste0(' -A "',getOption("HTTPUserAgent"),'"')))
if (is.na(file.size(infile7))) download.file(inUrl7,infile7,method="auto")

                   
 dt7 <-read.csv(infile7,header=F 
          ,skip=1
            ,sep="\t"  
        , col.names=c(
                    "Site_name",     
                    "trap_number",     
                    "UTM_Easting",     
                    "UTM_Northing",     
                    "elevation"    ), check.names=TRUE)
               
unlink(infile7)
		    
# Fix any interval or ratio columns mistakenly read in as nominal and nominal columns read as numeric or dates read as strings
                
if (class(dt7$Site_name)!="factor") dt7$Site_name<- as.factor(dt7$Site_name)
if (class(dt7$trap_number)!="factor") dt7$trap_number<- as.factor(dt7$trap_number)
if (class(dt7$UTM_Easting)=="factor") dt7$UTM_Easting <-as.numeric(levels(dt7$UTM_Easting))[as.integer(dt7$UTM_Easting) ]               
if (class(dt7$UTM_Easting)=="character") dt7$UTM_Easting <-as.numeric(dt7$UTM_Easting)
if (class(dt7$UTM_Northing)=="factor") dt7$UTM_Northing <-as.numeric(levels(dt7$UTM_Northing))[as.integer(dt7$UTM_Northing) ]               
if (class(dt7$UTM_Northing)=="character") dt7$UTM_Northing <-as.numeric(dt7$UTM_Northing)
if (class(dt7$elevation)=="factor") dt7$elevation <-as.numeric(levels(dt7$elevation))[as.integer(dt7$elevation) ]               
if (class(dt7$elevation)=="character") dt7$elevation <-as.numeric(dt7$elevation)
                
# Convert Missing Values to NA for non-dates
                
dt7$trap_number <- as.factor(ifelse((trimws(as.character(dt7$trap_number))==trimws("NaN")),NA,as.character(dt7$trap_number)))
dt7$UTM_Easting <- ifelse((trimws(as.character(dt7$UTM_Easting))==trimws("NaN")),NA,dt7$UTM_Easting)               
suppressWarnings(dt7$UTM_Easting <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt7$UTM_Easting))==as.character(as.numeric("NaN"))),NA,dt7$UTM_Easting))
dt7$UTM_Northing <- ifelse((trimws(as.character(dt7$UTM_Northing))==trimws("NaN")),NA,dt7$UTM_Northing)               
suppressWarnings(dt7$UTM_Northing <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt7$UTM_Northing))==as.character(as.numeric("NaN"))),NA,dt7$UTM_Northing))
dt7$elevation <- ifelse((trimws(as.character(dt7$elevation))==trimws("NaN")),NA,dt7$elevation)               
suppressWarnings(dt7$elevation <- ifelse(!is.na(as.numeric("NaN")) & (trimws(as.character(dt7$elevation))==as.character(as.numeric("NaN"))),NA,dt7$elevation))


# Here is the structure of the input data frame:
print("dt7) Structure")		    
str(dt7)                            
attach(dt7)                            
# The analyses below are basic descriptions of the variables. After testing, they should be replaced.                 

print(" ")
print("Summary of Site_name")
print(summary(Site_name))
print(" ")
print("Summary of trap_number")
print(summary(trap_number))
print(" ")
print("Summary of UTM_Easting")
print(summary(UTM_Easting))
print(" ")
print("Summary of UTM_Northing")
print(summary(UTM_Northing))
print(" ")
print("Summary of elevation")
print(summary(elevation)) 
# Get more details on character variables
                 

print(" ")
print("Summary of Site_name")
print(summary(as.factor(dt7$Site_name))) 

print(" ")
print("Summary of trap_number")
print(summary(as.factor(dt7$trap_number)))
detach(dt7)               
        
	      

inUrl8  <- "https://pasta.lternet.edu/package/data/eml/knb-lter-cwt/1047/14/1b120c86124ae7e597100b5b508adef1" 
infile8 <- tempfile()
try(download.file(inUrl8,infile8,method="curl",extra=paste0(' -A "',getOption("HTTPUserAgent"),'"')))
if (is.na(file.size(infile8))) download.file(inUrl8,infile8,method="auto")

                   
 dt8 <-read.csv(infile8,header=F 
          ,skip=1
            ,sep="\t"  
        , col.names=c(
                    "v_4_letter_code",     
                    "v_8_letter_code",     
                    "v_12_letter_code",     
                    "Genus",     
                    "Specific_Epithet",     
                    "Definition"    ), check.names=TRUE)
               
unlink(infile8)
		    
# Fix any interval or ratio columns mistakenly read in as nominal and nominal columns read as numeric or dates read as strings
                
if (class(dt8$v_4_letter_code)!="factor") dt8$v_4_letter_code<- as.factor(dt8$v_4_letter_code)
if (class(dt8$v_8_letter_code)!="factor") dt8$v_8_letter_code<- as.factor(dt8$v_8_letter_code)
if (class(dt8$v_12_letter_code)!="factor") dt8$v_12_letter_code<- as.factor(dt8$v_12_letter_code)
if (class(dt8$Genus)!="factor") dt8$Genus<- as.factor(dt8$Genus)
if (class(dt8$Specific_Epithet)!="factor") dt8$Specific_Epithet<- as.factor(dt8$Specific_Epithet)
if (class(dt8$Definition)!="factor") dt8$Definition<- as.factor(dt8$Definition)
                
# Convert Missing Values to NA for non-dates
                


# Here is the structure of the input data frame:
print("dt8) Structure")		    
str(dt8)                            
attach(dt8)                            
# The analyses below are basic descriptions of the variables. After testing, they should be replaced.                 

print(" ")
print("Summary of v_4_letter_code")
print(summary(v_4_letter_code))
print(" ")
print("Summary of v_8_letter_code")
print(summary(v_8_letter_code))
print(" ")
print("Summary of v_12_letter_code")
print(summary(v_12_letter_code))
print(" ")
print("Summary of Genus")
print(summary(Genus))
print(" ")
print("Summary of Specific_Epithet")
print(summary(Specific_Epithet))
print(" ")
print("Summary of Definition")
print(summary(Definition)) 
# Get more details on character variables
                 

print(" ")
print("Summary of v_4_letter_code")
print(summary(as.factor(dt8$v_4_letter_code))) 

print(" ")
print("Summary of v_8_letter_code")
print(summary(as.factor(dt8$v_8_letter_code))) 

print(" ")
print("Summary of v_12_letter_code")
print(summary(as.factor(dt8$v_12_letter_code))) 

print(" ")
print("Summary of Genus")
print(summary(as.factor(dt8$Genus))) 

print(" ")
print("Summary of Specific_Epithet")
print(summary(as.factor(dt8$Specific_Epithet))) 

print(" ")
print("Summary of Definition")
print(summary(as.factor(dt8$Definition)))
detach(dt8)               
        

# ==============================================================================
# Trechos de Código para Análise e Visualização de Dados
# ==============================================================================

# Carregar pacotes necessários
# Certifique-se de ter esses pacotes instalados. Se não tiver, use install.packages("nome_do_pacote")
library(dplyr)
library(ggplot2)
library(tidyr) # Para pivotar dados para visualização

# ------------------------------------------------------------------------------
# Análise 1: Tendência Temporal da Produção de Sementes (dt1)
# ------------------------------------------------------------------------------

# Agrupar dt1 por ano e somar as contagens de sementes para espécies selecionadas
# Vamos focar em algumas espécies para exemplo. Adapte conforme necessário.
seed_data_summary <- dt1 %>%
  select(year, abieFras, acerSpic, piceRube, sorbAmer) %>%
  group_by(year) %>%
  summarise(across(everything(), sum, na.rm = TRUE)) %>%
  pivot_longer(cols = -year, names_to = "species", values_to = "seed_count")

# Visualização: Produção de Sementes ao Longo do Tempo
ggplot(seed_data_summary, aes(x = year, y = seed_count, color = species)) +
  geom_line(size = 1) +
  geom_point(size = 2) +
  labs(
    title = "Produção Anual de Sementes por Espécie (Clingmans Dome)",
    x = "Ano",
    y = "Contagem de Sementes",
    color = "Espécie"
  ) +
  theme_minimal() +
  theme(legend.position = "bottom")

# Salvar o gráfico (opcional)
ggsave("seed_production_trend.png", width = 10, height = 6, dpi = 300)

# ------------------------------------------------------------------------------
# Análise 2: Crescimento de Árvores (DBH) por Espécie (dt2)
# ------------------------------------------------------------------------------

# Calcular a mudança no DBH (diâmetro à altura do peito) entre 2011 e 2014
# Filtrar para árvores com dados de DBH em ambos os anos e espécies conhecidas
tree_growth_data <- dt2 %>%
  filter(!is.na(diam2011) & !is.na(diam2014) & !is.na(species)) %>%
  mutate(dbh_change = diam2014 - diam2011) %>%
  select(species, dbh_change)

# Visualização: Distribuição da Mudança no DBH por Espécie
ggplot(tree_growth_data, aes(x = species, y = dbh_change, fill = species)) +
  geom_boxplot() +
  labs(
    title = "Mudança no DBH (2014-2011) por Espécie (Clingmans Dome)",
    x = "Espécie",
    y = "Mudança no DBH (cm)"
  ) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Salvar o gráfico (opcional)
ggsave("dbh_change_by_species.png", width = 12, height = 7, dpi = 300)

# ------------------------------------------------------------------------------
# Análise 3: Taxa de Sobrevivência de Árvores (dt2)
# ------------------------------------------------------------------------------

# Contar o número de árvores que morreram por ano
tree_mortality_data <- dt2 %>%
  filter(!is.na(deathyr)) %>%
  group_by(deathyr) %>%
  summarise(mortality_count = n()) %>%
  arrange(deathyr)

# Visualização: Número de Mortes de Árvores por Ano
ggplot(tree_mortality_data, aes(x = deathyr, y = mortality_count)) +
  geom_bar(stat = "identity", fill = "darkred") +
  labs(
    title = "Número de Mortes de Árvores Registradas por Ano (Clingmans Dome)",
    x = "Ano da Morte",
    y = "Número de Árvores Mortas"
  ) +
  theme_minimal()

# Salvar o gráfico (opcional)
ggsave("tree_mortality_by_year.png", width = 10, height = 6, dpi = 300)

# ------------------------------------------------------------------------------
# Análise 4: Distribuição Espacial das Árvores (dt2)
# ------------------------------------------------------------------------------

# Usando as coordenadas UTM para plotar a distribuição das árvores
# Filtrar para árvores com coordenadas UTM válidas
spatial_tree_data <- dt2 %>%
  filter(!is.na(UTM_Easting) & !is.na(UTM_Northing)) %>%
  select(species, UTM_Easting, UTM_Northing)

# Visualização: Distribuição Espacial das Árvores por Espécie
ggplot(spatial_tree_data, aes(x = UTM_Easting, y = UTM_Northing, color = species)) +
  geom_point(alpha = 0.7, size = 2) +
  labs(
    title = "Distribuição Espacial das Árvores por Espécie (Clingmans Dome)",
    x = "UTM Easting",
    y = "UTM Northing",
    color = "Espécie"
  ) +
  theme_minimal() +
  coord_fixed() # Mantém a proporção correta para coordenadas espaciais

# Salvar o gráfico (opcional)
ggsave("spatial_tree_distribution.png", width = 10, height = 8, dpi = 300)

# ==============================================================================
# Fim dos Trechos de Código
# ==============================================================================


