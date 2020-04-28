options(prompt = "R> ",
        digits = 4,
        show.signif.stars = FALSE,
        max.print = 1000,
        continue = "... ",
        repos = structure(c(CRAN="https://cloud.r-project.org/")))

## tab-complete package names
utils::rc.settings(ipck=TRUE)

## don't ask to save workspace
q <- function (save="no", ...) {
  quit(save=save, ...)
}
