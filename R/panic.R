#' Don't Panic
#'
#' Displays a green ASCII banner.
#'
#' @param mins For how many minutes should the alarm continue to sound? Defaults to 60.
#' @param banner Show a "PANIC" banner message in ASCII art? Defaults to TRUE.
#' @return
#' @export
dontPanic <- function(mins = 60, banner = TRUE){
  if (banner) {message(crayon::bgGreen(crayon::white(paste0(readLines(system.file("ascii/", "dont_panic.txt", package = "panic")), collapse = "\n"))))}
  a <- 0
  while (a<mins) {
    for(i in 1:6){
      beepr::beep(system.file("sounds/", "tng_red_alert2.wav", package = "panic"))
      Sys.sleep(10)
    }
    a <- a+1
  }
}
