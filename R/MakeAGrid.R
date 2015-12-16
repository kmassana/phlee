#NOTE: DO NOT WORRY ABOUT THIS

#Function to make a grid that is superimposed over an area. The matrix will have grids with different probabilities for each cell (user given). The matrix will have lower and upper x and y limits. The size of the grids can be adjusted with sizegridx and sizegridy. Need to add how to input the movement rate and the probability of movement to only neighboring cells


MakeGrid <- function(longitude=NULL, latitude=NULL, probabilities=NULL, sizegridx=NULL, sizegridy=NULL, xlimgrid=NULL, ylimgrid=NULL) 
{
    x.grid <- seq(xlimgrid, by = sizegridx)
    y.grid <- seq(ylimgrid, by = sizegridy)
 	movement.rate <-
 	prob.to.grid <- 
 	get.interval.x <- findInterval(longitude, x.grid)
 	get.interval.y <- findInterval(latitude, y.grid)
 	grid <- data.frame(x=x.grid, y=y.grid) #butn need the probs in this matrix
 	return(grid) 	
   }


#Make functions (or call other packages) to input tree data, logitude, latitude, and probabilities input as a vector