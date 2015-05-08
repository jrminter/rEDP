#' Make test electron diffraction data from Al
#'
#' This creates the required electron diffraction radial profile
#' file ('Al-dc-ra.csv') and the required ICDD diffraction line
#' file('04-0787-Al-Fm3m.csv') in the specified directory to
#' permit a user to test the other functions.
#'
#' @param dir This is the desired directory. The default is the current directory.
#'
#' @return None But the data frames al.edp and al.lines are loaded into the workspace.
#'
#' @export
#'
#' @examples
#' # not run
make.test.ed.data <-
function(dir='./'){
  data(al.lines)
  data(al.edp)
  str.edp   <- paste(dir,'Al-dc-ra.csv',sep='')
  write.csv(al.edp, file=str.edp,
  	        row.names=FALSE, quote=FALSE )
  str.lines <-  paste(dir,'04-0787-Al-Fm3m.csv',sep='')
  write.csv(al.lines, file=str.lines,
  	        row.names=FALSE, quote=FALSE )
}
