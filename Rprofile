options(width = 600)                # wide display with multiple monitors
options(digits.secs = 3)            # show sub-second time stamps
options(useFancyQuotes = FALSE)
options(datatable.print.class = TRUE)
options(datatable.print.keys = TRUE)
options(repos = c(REPO_NAME =
  "https://packagemanager.rstudio.com/all/__linux__/jammy/latest"))
options(languageserver.formatting_style = function(options) {
  styler::tidyverse_style(scope = "indention", indent_by = options$tabSize)
})


r_lib <- file.path(Sys.getenv("HOME"), ".R",
                   paste0(R.Version()$major, ".", R.Version()$minor))
if (!dir.exists(r_lib)) dir.create(r_lib)
.libPaths(c(r_lib, .libPaths()))
Sys.setenv(R_LIBS_USER = r_lib)
rm(r_lib)
Sys.setenv(R_HISTSIZE = "100000")
if (Sys.getenv("R_HISTFILE") == "") {
  Sys.setenv(R_HISTFILE = file.path("~", ".Rhistory"))
}

## Create a new invisible environment for all the functions to go in
# so it doesn't clutter your workspace.
.env <- new.env()

.env$o <- function(...) if (Sys.info()[1] == "Darwin") system("open .")
.env$cd <- setwd
.env$pwd <- getwd
.env$lss <- dir

.env$s <- base::summary
.env$h <- utils::head

## Show the first 5 rows and first 5 columns of a data frame or matrix
.env$hh <- function(d) if (class(d) %in% c("matrix", "data.frame")) d[1:5, 1:5]

## Read data on clipboard.
.env$read.cb <- function(...) {
  ismac <- Sys.info()[1] == "Darwin"
  if (!ismac) read.table(file = "clipboard", ...)
  else read.table(pipe("pbpaste"), ...)
}

## List objects and classes (from @_inundata, mod by ateucher)
.env$lsa <- function() {
  obj_type <- function(x) class(get(x, envir = .GlobalEnv)) # define environment
  foo <- data.frame(sapply(ls(envir = .GlobalEnv), obj_type))
  foo$object_name <- rownames(foo)
  names(foo)[1] <- "class"
  names(foo)[2] <- "object"
  return(unrowname(foo))
}

## List all functions in a package (also from @_inundata)
.env$lsp <- function(package, all.names = FALSE, pattern) {
  package <- deparse(substitute(package))
  ls(pos = paste("package", package, sep = ":"), all.names = all.names,
     pattern = pattern)
}

## Attach all the variables above
attach(.env)

options(error = function() {
  calls <- sys.calls()
  if (length(calls) >= 2L) {
    sink(stderr())
    on.exit(sink(NULL))
    cat("Backtrace:\n")
    calls <- rev(calls[-length(calls)])
    for (i in seq_along(calls)) {
      cat(i, ": ", deparse(calls[[i]], nlines = 1L), "\n", sep = "")
    }
  }
  if (!interactive()) {
    message("Exiting on error")
    q(status = 1)
  }
})

Sys.setenv(TERM_PROGRAM = "vscode")
source(file.path(Sys.getenv("HOME"), ".vscode-R", "init.R"))
if (interactive() && Sys.getenv("TERM_PROGRAM") == "vscode") {
  if ("httpgd" %in% .packages(all.available = TRUE)) {
    options(vsc.plot = FALSE)
    options(device = function(...) {
      httpgd::hgd()
      .vsc.browser(httpgd::hgd_url(), viewer = "Beside")
    })
  }
}
