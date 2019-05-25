

#### ----------------------------------
#### Merge shapes with shapefile 
#### ----------------------------------

# loal library
library(rgdal)
library(leaflet)
# install.packages('leaflet')


#### ----------------------------------
#### Preprocess shapefile for merging
#### ----------------------------------

# import shapefile of all Victoria
vic <- readOGR(dsn = path.expand('handover/2016_SA2_shape'), stringsAsFactors = F) 
names(vic2)
# import income and population data
income <- read.csv('handover/income_pop_updated.csv', stringsAsFactors = F)

# import census name of Greater Melbourne Suburbs
name_lookup <- read.csv('handover/greaterm_name_compare.csv', stringsAsFactors = F)

# keep only the suburbs in Greater Melbourne
vic <- subset(vic, vic$SA2_NAME %in% name_lookup$original)

# merge with income and population data
vic <- sp::merge(vic, income, by.x = 'SA2_NAME', by.y = 'Census')

# load suburbs that have sub-suburbs (need to be merged)
has_sub <- read.csv('handover/has_sub3.csv', stringsAsFactors = F)

# manually add a few more to the list 
has_sub <- c(has_sub$suburb)
has_sub[41] <- 'Mornington'
has_sub[42] <- 'Yarra Valley'
has_sub[43] <- 'Pearcedale - Tooradin'
has_sub[44] <- 'Campbellfield - Coolaroo'
has_sub[45] <- 'Gladstone Park - Westmeadows'
has_sub[46] <- 'Emerald - Cockatoo'
has_sub[47] <- 'Moorabbin - Heatherton'
has_sub[48] <- 'Brighton'
has_sub[49] <- 'Ashburton'
has_sub[50] <- 'Armadale'
has_sub[51] <- 'Prahran - Windsor'
has_sub[52] <- 'Bayswater'
has_sub[53] <- 'Montrose'
has_sub[54] <- 'Burnside'


#### ----------------------------------
#### Merging
#### ----------------------------------

# for each suburb that has sub-suburbs
for( s in has_sub){
  
  if (s %in% vic$suburb){
    print (s)
    
    # subset the suburb that needs to be merged 
    to_change <- vic[vic$suburb == s,]
    
    # get the coordinates of the respective suburbs
    to_change.cor <- coordinates(to_change)
    
    # create the shapefile without this suburb to later merging
    vic.no.craig <- subset(vic, suburb != s)
    
    # generate IDs for grouping
    to_change_bin <- mltools::bin_data(x = to_change.cor[,1], bins=1)
    
    # merge polygons by ID
    to_changeunion <- maptools::unionSpatialPolygons(to_change, to_change_bin)
    
    # convert SpatialPolygons to data frame
    to_change.all <- SpatialPolygonsDataFrame(to_change.union, 
                                                income[income$suburb == s,][1,],
                                                match.ID = F)
    
    # merge the newly merged file with the original 
    vic <- raster::bind(to_change.all, vic.no.craig)
  
  }
}

#### ----------------------------------
#### plot the map to test the merging 
#### ----------------------------------


leaflet() %>%
  # basemap - no shapes or markers
  addProviderTiles(provider = providers$CartoDB.Positron) %>%
  fitBounds(lng1 = 144.515897, lng2 = 145.626704, lat1 = -37.20, lat2 = -38.50) %>%
  setView(lng = (144.515897 + 145.626704) /2 , lat = (-37.20-38.50)/2, zoom = 9) %>%
  # plot all suburbs in polygon. colour the shapes based on mypal_me function
  # can change shape colour, label style, highlight colour, opacity, etc. 
  # basically everything visual about the map can be changed through different options
  addPolygons(data = vic, 
              label = ~suburb,
              highlight = highlightOptions(
                fill = T,
                fillColor = 'black',
                fillOpacity = .8,
                color = 'black',
                opacity = .5,
                bringToFront = TRUE,
                sendToBack = TRUE),
              group = 'Turkish Restaurants',
              layerId = vic$suburb)



#### ----------------------------------
#### Combine processed shapefile with ratio 
#### ----------------------------------
ratio <- read.csv('NewData/final_ratio.csv', stringsAsFactors = F)
vic <- sp::merge(vic, ratio, by.x = 'suburb', by.y = 'suburb')


# subset columns - keep only suburb, income_class, population, and all the ratio 
names(vic)

vic_sub <- vic[,c(1,3,4,18, 19, 20, 21)]

# change column names
n <- names(vic_sub)
n[2] <- 'income_class'
n[3] <- 'Population'
n[4] <- 'TK'
n[5] <- 'LB'
n[6] <- 'ME'
n[7] <- 'Ratio'
names(vic_sub) <- n

# change the order of colulmns
vic_sub <- vic_sub[,c('suburb', 'Ratio', 'Population', 'income_class', 'LB', 'ME', 'TK')]

### save the new shapefile to disk
writeOGR(vic_sub, dsn = path.expand('handover/2016_SA2_shape'), 'merged_all', driver="ESRI Shapefile")

