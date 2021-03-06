
require("ROI")
require("ROI.plugin.symphony")

test_that("ROI Solution runs without error", {

  mat <- matrix(c( 3, 4, 2
                  ,2, 1, 2
                  ,1, 3, 2), nrow=3, byrow=TRUE)
  x <- OP( objective = c(2, 4, 3)
         , constraints = L_constraint(L = mat,dir = c("<=", "<=", "<="),rhs = c(60, 40, 80))
         , maximum = TRUE
         )
  opt <- ROI_solve(x, solver = "symphony")
  opt
  ## Optimal solution found.
  ## The objective value is: 7.666667e+01
  solution(opt)
  ## [1]  0.000000  6.666667 16.666667
  
  Correct_ROIsymphoniesolution <- structure(list( solution = c(0, 6.66666666666667, 16.6666666666667)
                                                , objval = 76.6666666666667
                                                , status = list( code = 0L
                                                               , msg = structure(list( solver = "symphony"
                                                                                     , code = 227L
                                                                                     , symbol = "TM_OPTIMAL_SOLUTION_FOUND"
                                                                                     , message = "Solution is optimal."
                                                                                     , roi_code = 0L
                                                                                     ), class = "registry_entry")
                                                               )
                                                , message = NULL)
                                            , meta = list(solver = "symphony")
                                            , class = c("symphony_solution","OP_solution")
                                            )
  expect_equal(opt,Correct_ROIsymphoniesolution)
  
})
