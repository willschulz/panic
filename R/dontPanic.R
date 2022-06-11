#' Don't Panic
#'
#' Displays a green ASCII banner.
#'
#' @return
#' @export
dontPanic <- function(){
  if (banner) {message(crayon::green(paste0(readLines(system.file("ascii/", "dont_panic.txt", package = "panic")), collapse = "\n")))}
}
