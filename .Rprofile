## from the AER book by Zeileis and Kleiber
options(prompt="R> ", digits=4, show.signif.stars=FALSE)

options(stringsAsFactors=FALSE)

options(max.print=1000)

## Default CRAN Mirror
options(repos=structure(c(CRAN="https://cloud.r-project.org/")))

## rather than use "+" as the continuation
options(continue="... ")

## don't ask to save workspace
q <- function (save="no", ...) {
  quit(save=save, ...)
}

## tab-complete package names
utils::rc.settings(ipck=TRUE)

## allows for colorized output option
if(Sys.getenv("TERM") == "xterm-256color")
  library("colorout")
