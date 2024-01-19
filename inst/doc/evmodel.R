## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)
library(evprof)

## ----ev_model-----------------------------------------------------------------
evprof::california_ev_model

## -----------------------------------------------------------------------------
california_ev_model$models

## -----------------------------------------------------------------------------
workday_model <- california_ev_model$models$user_profiles[[1]]
workday_model

## -----------------------------------------------------------------------------
worktime_model <- workday_model[2, ]

## -----------------------------------------------------------------------------
worktime_model$connection_models

## -----------------------------------------------------------------------------
latex_code <- print_connection_models_table(worktime_model, label = "tab:connection", caption = "Worktime connection Gaussian Models", full_width = FALSE)
cat(latex_code)

## -----------------------------------------------------------------------------
worktime_model$energy_models[[1]]

## -----------------------------------------------------------------------------
worktime_model$energy_models[[1]]$energy_models[[1]]

## -----------------------------------------------------------------------------
latex_code <- print_user_profile_energy_models_table(worktime_model$energy_models[[1]], label = "tab:energy", caption = "Worktime energy Gaussian Models", full_width = FALSE)
cat(latex_code)

