# ROI.plugin.symphony

Enhances the R Optimization Infrastructure ('ROI') package by registering the 'SYMPHONY' open-source solver from the COIN-OR suite. It allows for
solving mixed integer linear programming (MILP) problems as well as all variants/combinations of LP, IP. 

This variant works with the lpsymphony package that allows for easier integration on macOS and Ubuntu without requiring manual configuration.
This is particularly useful for use in multi OS Continuous Integration (CI) systems like Github Actions, Travis or Appveyor.

based on the cran package ROI.plugin.symphony 0.2-5

# Installation of the package

```
install.packages("devtools")
devtools::install_github("GreenGrassBlueOcean/ROI.plugin.symphony")
```
load the package
```
library(ROI.plugin.symphony)
```
