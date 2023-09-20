# deploy/deploy-shinyapps.R
# usethis::use_build_ignore("deploy")
rsconnect::setAccountInfo(
  Sys.getenv("SHINYAPPS_ACCOUNT"),
  Sys.getenv("SHINYAPPS_TOKEN"),
  Sys.getenv("SHINYAPPS_SECRET")
)

options(rsconnect.packrat = FALSE)

renv::settings$snapshot.type("explicit")
#renv::settings$ignored.packages("ShinyCICD")

rsconnect::deployApp(appName = "ShinyCICD-renv-test", forceUpdate = TRUE)
