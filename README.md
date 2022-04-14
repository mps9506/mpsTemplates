
<!-- README.md is generated from README.Rmd. Please edit that file -->

# mpsTemplates

<!-- badges: start -->

[![license](https://img.shields.io/badge/license-MIT%20+%20file%20LICENSE-lightgrey.svg)](https://choosealicense.com/)
[![R-CMD-check](https://github.com/mps9506/mps-templates/workflows/R-CMD-check/badge.svg)](https://github.com/mps9506/mps-templates/actions)

<!-- badges: end -->

``` r
library(ggplot2)
library(mpsTemplates)
ggplot(cars) +
  geom_point(aes(speed, dist)) +
  theme_mps_noto() +
  labs(title = "Cars", subtitle = "Speed and stopping distance",
       caption = "Ezekiel, M (1930) Methods of Correlation Analysis",
       x = "Speed [mph]",
       y = "Stopping Distance [ft]")
```

<img src="man/figures/README-unnamed-chunk-2-1.png" width="100%" />

## pkgdown

The package includes some pkgdown template files intended for use by my
packages.

To use, add/edit \_pkgdown.yaml in the package root directory:

``` yaml
template:
  package: mpsTemplates
  bootstrap: 5

navbar:
  type: light
  bg: light
  structure:
    right: [search, github]
```

AND add the following to the DESCRIPTION:

    Config/Needs/website: mps9506/mpsTemplates

Use rlibs Github Action to build the pkgdown documentation:

``` r
usethis::use_github_action("pkgdown")
```

## rmarkdown

The package includes the following rmarkdown templates:

-   *mps pdf Cormorant template*: Intended for pdf reports.

These are available in the RStudio New -> Rmarkdown selector after
installing this package.

## bookdown

The package include the following project:

-   *mps Bookdown Single Page Website*: Intended for single page
    websites hosted on github pages

These are available by loading the package and selecting “New Project”
-> “New Directory” -> “mps Github Pages Website”
