#' Don't Panic
#'
#' Displays a green ASCII banner.
#'
#' @return
#' @export
dontPanic <- function(){
  message(crayon::green(paste0(readLines(system.file("ascii/", "dont_panic.txt", package = "panic")), collapse = "\n")))
}
