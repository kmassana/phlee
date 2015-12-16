
#First we need the matrix of areas
#Each element is the probability of a species being able to survive in that cell
#(which is required to move through it)
#There could be multiple grids, one for each time slice
#Input is expected to be 3d array: x and y is the grid, z index is the time slice
LoadGrids <- function(object=NULL, times=NULL) {
	stuff()
	return(grid.array)
}

InterpolateGrids <- function(grid.array, times, step.size, max.time) {
	if(length(times)==1) {
		grid.array=bind(grid.array, grid.array)
		times=c(0, max.time)
	}
	final.grid <- c()
	for (time.period in sequence(length(times)-1)) {
		for (step.index in __) {
			final.grid <- append(final.grid, interpolation of grid at time.period and grid at time.period+1)
		}
	}
}

#starting.prob is same size as grid, but has probability of that individual
#being in each cell; at tips, presumably 1 in one cell, 0 in all others, but
#as you go down this spreads out
#grid is the array of available spaces at this time step
#rate is the probability of trying a move to a neighboring cell
#right now, rate same for all individuals, but could make trait dependent in future
MoveOneStep <- function(starting.prob, grid, rate) {
	#about to do for loop. Much better would be to pull out the part below into
	#a function and then do apply()
	final.prob <- 0*starting.prob
	for (cell.row in sequence(dim(starting.prob)[1])) {
		for (cell.col in sequence(dim(starting.prob)[2])) {
			local.prob <- starting.prob[cell.row, cell.col]
			if(local.prob>0) {
				all.prob.moves <- 0
				for (cell.to.row in c((cell.row-1):(cell.row+1))) {
					for (cell.to.col in c((cell.col-1):(cell.col+1))) {
						if(cell.to.col != cell.col & cell.to.row != cell.row) {
							prob.move <- rate * grid[cell.to.row, cell.to.col] #could do something here to have current or similar to have directed flow. Maybe pass in as different grid
							final.prob[cell.to.row, cell.to.col] <- final.prob[cell.to.row, cell.to.col] + prob.move
						}
					}
				}
				final.prob[cell.row, cell.col] <- final.prob[cell.row, cell.col] + (1-prob.move)
			}
		}
	}
	return(final.prob)
}

#now take final.prob grids from the left and right descendants (or from more of them)
AggregateAtNode <- function(all.probs) {
	return(apply(all.probs, c(1,2), prod))
}

TraverseDownTree <- function(phy, locations, final.grid.array, rate) {
	#do postorder traversal of tree (from tips down)
	#for every edge, store the grid of probabilities at the tipward and eventually rootward node
	#for an internal edge, use the AggregateAtNode function on the grids of the rootward node of its descendants to get its tipward node grid
	#for any edge, keep track of the height from the root. Split the edge into a bunch of pieces
	#for each piece, use the grid of probabilities for that individual from the previous time, combined with the occupancy grid (the can you live there or not grid) from the focal time
	
}