# From neurips 2021 docker
install.packages(c("IRkernel", "tidyverse", "anndata", "lmds", "FNN"), repos = "https://cran.rstudio.com")
# For Linux: download libv8 during installation
Sys.setenv(DOWNLOAD_STATIC_LIBV8=1)
install.packages(c("V8","sfsmisc","clue","randomForest","lattice","devtools","MASS"),repos="https://cran.rstudio.com")
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager",repos="https://cran.us.r-project.org")
BiocManager::install(version = "3.14")
BiocManager::install(c("SID", "bnlearn", "pcalg"))
#BiocManager::install(c("CAM", "SID", "bnlearn", "pcalg", "kpcalg", "D2C"))
library(devtools)
install_github("cran/momentchi2")
install_github("Diviyan-Kalainathan/RCIT")
install.packages(c("sparsebn"), repos="https://cran.rstudio.com")
