test_that("dispersal in grid", {
	my.grid <- MakeUniformGridWithBounds(7,7)
	starting.prob <- my.grid * 0
	starting.prob[3,4] <- 1
	rate <- 0.1
	final.expected.prob <- my.grid * 0
	final.expected.prob[2:4,3:5] <- .1
	final.expected.prob[3,4] <- .2
	final.generated.prob <- MoveOneStep(starting.prob, my.grid, rate)
	expect_equal(final.generated.prob, final.expected.prob)
})

test_that("Make Uniform Grid", {
	my.grid <- MakeUniformGridWithBounds(4,4)
	expected.grid <- matrix(0, 4, 4)
	expected.grid[2:3, 2:3] <- 1
	expect_equal(expected.grid, my.grid)
})
