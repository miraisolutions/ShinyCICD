# deploy/deploy-shinyapps.R
# usethis::use_build_ignore("deploy")
rsconnect::setAccountInfo(
  Sys.getenv("SHINYAPPS_ACCOUNT"),
  Sys.getenv("SHINYAPPS_TOKEN"),
  Sys.getenv("SHINYAPPS_SECRET")
)

options(repos=c(CRAN="https://cran.rstudio.com"))
rsconnect::deployApp(appName = "ShinyCICD-test-renv", forceUpdate = TRUE)
