#' Red Alert
#'
#' Sounds the Red Alert sound effect from Star Trek: The Next Generation, and optionally displays a red ASCII banner.
#'
#' @param mins For how many minutes should the alarm continue to sound? Defaults to 60.
#' @param banner Show a "Red Alert" banner message in ASCII art? Defaults to TRUE.
#' @return
#' @export
redAlert <- function(mins = 60, banner = TRUE){
  if (banner) {message(crayon::bgRed(crayon::white(paste0(readLines(system.file("ascii/", "red_alert.txt", package = "panic")), collapse = "\n"))))}
  a <- 0
  while (a<mins) {
    for(i in 1:6){
      beepr::beep(system.file("sounds/", "tng_red_alert2.wav", package = "panic"))
      Sys.sleep(10)
    }
    a <- a+1
  }
}
