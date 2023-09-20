# deploy/deploy-shinyapps.R
# usethis::use_build_ignore("deploy")
rsconnect::setAccountInfo(
  Sys.getenv("SHINYAPPS_ACCOUNT"),
  Sys.getenv("SHINYAPPS_TOKEN"),
  Sys.getenv("SHINYAPPS_SECRET")
)

options(rsconnect.packrat = TRUE)

rsconnect::deployApp(appName = "ShinyCICD-renv-test", forceUpdate = TRUE)
