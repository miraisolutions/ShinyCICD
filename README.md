
# ShinyCICD

<!-- badges: start -->
[![CI-CD](https://github.com/miraisolutions/ShinyCICD/workflows/CI-CD/badge.svg)](https://github.com/miraisolutions/ShinyCICD/actions/workflows/ci-cd.yml)
[![CI-CD-renv](https://github.com/miraisolutions/ShinyCICD/workflows/CI-CD-renv/badge.svg)](https://github.com/miraisolutions/ShinyCICD/actions/workflows/ci-cd-renv.yml)
<!-- badges: end -->

The goal of **ShinyCICD** is to provide an example of a packaged Shiny app,
to illustrate CI/CD pipelines on open source tools like GitHub Actions.

The app in the repository is structured as an R package with a (deactivated) `renv` project to control package dependencies, and uses on GitHub Actions `rsconnect` package to deploy to [shinyapps.io](www.shinyapps.io).

Two workflows are set on GitHub actions:

- `ci-cd` runs without the `renv` project using `pak` for controlling package dependencies. The workflow is also scheduled to run on the 1st day of the month at midnight.
- `ci-cd-renv` runs activates the `renv` project and uses `renv` controlling package dependencies, also in the deployment step.


## Installation

You can install the released version of ShinyCICD from GitHub with:

``` r
remotes::install_github("miraisolutions/ShinyCICD")
```

## Deployment

The Shiny app with Old Faithful Geyser example is deployed to `shinyapps.io` on the Mirai Solutions account.

[Deployed App with the renv project](https://miraisolutions.shinyapps.io/ShinyCICD-renv/)

[Deployed App without the renv project](https://miraisolutions.shinyapps.io/ShinyCICD)


