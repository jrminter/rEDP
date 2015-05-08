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
  str.edp   <- paste(dir,'Al-dc-ra.csv',sep='')
  # Note the use of the namespace - rEDP::al.edp
  # this gets around an annoying no-visible-binding-for-global-variable
  # warning
  # see Peter Dalgaard's comment Aug 27, 2014; 3:05pm
  # http://r.789695.n4.nabble.com/no-visible-binding-for-global-variable-for-data-sets-in-a-package-td4696053.html
  write.csv(rEDP::al.edp, file=str.edp,
  	        row.names=FALSE, quote=FALSE )
  str.lines <-  paste(dir,'04-0787-Al-Fm3m.csv',sep='')
  write.csv(rEDP::al.lines, file=str.lines,
  	        row.names=FALSE, quote=FALSE )
}
