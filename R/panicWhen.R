#' Panic When
#'
#' When the condition is met, sound an audio alarm, and optionally display a red "PANIC" banner.  When the condition is not met, optionally display a "DON'T PANIC" banner.
#'
#' @param panic_condition Logical that is TRUE if a panic should occur, FALSE when no panic should occur.
#' @param mins In case of panic, for how many minutes should the alarm continue to sound? Defaults to 60.
#' @param panic_banner In panic condition, show a "PANIC" banner message in ASCII art? Defaults to TRUE.
#' @param dontpanic_banner In don't panic condition, show a "DON'T PANIC" banner message in ASCII art? Defaults to TRUE.
#' @param print_time Print the system time before checking the panic condition (useful for verifying panic check is active). Defaults to TRUE.
#' @return
#' @export
panicWhen <- function(panic_condtion, mins = 60, panic_banner = TRUE, dontpanic_banner = TRUE, print_time = TRUE){
  if (!is.logical(panic_condtion)) {stop("panic_condtion must be TRUE or FALSE")}
  if (print_time) {message("Checking at ", Sys.time(), "...")}
  if (panic_condtion) {
    panic::panic(mins = mins, banner = panic_banner)
  } else {
    if (dontpanic_banner) {
      panic::dontPanic()
    }
  }
}
