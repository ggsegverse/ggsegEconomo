# ggsegEconomo

Economo Atlas for the ggsegverse Ecosystem.

## Installation

``` r
# From r-universe
install.packages("ggsegEconomo", repos = "https://ggsegverse.r-universe.dev")

# From GitHub
# install.packages("remotes")
remotes::install_github("ggsegverse/ggsegEconomo")
```

## Atlases

### economo

Economo & Koskinas 1925 cytoarchitectonic parcellation.

``` r
library(ggsegEconomo)
plot(economo())
```

![](reference/figures/README-economo-1.png) \## Data source

Annotation files from Pijnenburg et al. (2021) supplementary materials.

- **Reference**: Economo & Koskinas (1925); Pijnenburg et al. (2021)
  [doi:10.1016/j.neuroimage.2021.118274](https://doi.org/10.1016/j.neuroimage.2021.118274)

- **Date obtained**: 2021-11-05
