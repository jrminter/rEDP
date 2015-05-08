#' Make test electron diffraction data
#'
#' This creates the required electron diffraction radial profiles
#' file ('Al-dc-ra.csv' and 'BaTiO3-dc-ra.csv') as well as the
#' required ICDD diffraction line file('04-0787-Al-Fm3m.csv',
#' '34-0129-BaTiO3-P63mmc.csv', and '05-0626-BaTiO3-P4mm.csv') in
#' the specified directory to permit a user to test the other
#' functions.
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
  # Note the use of the namespace - rEDP::al.edp
  # this gets around an annoying no-visible-binding-for-global-variable
  # warning
  # see Peter Dalgaard's comment Aug 27, 2014; 3:05pm
  # http://r.789695.n4.nabble.com/no-visible-binding-for-global-variable-for-data-sets-in-a-package-td4696053.html

  # First the EDP profiles
  str.edp   <- paste(dir,'Al-dc-ra.csv', sep='')
  write.csv(rEDP::al.edp, file=str.edp,
  	        row.names=FALSE, quote=FALSE )
  str.edp   <- paste(dir,'BaTiO3-dc-ra.csv', sep='')
  write.csv(rEDP::batio3.edp, file=str.edp,
            row.names=FALSE, quote=FALSE )

  # now the IDD cards
  str.lines <-  paste(dir,'04-0787-Al-Fm3m.csv',sep='')
  write.csv(rEDP::al.lines, file=str.lines,
  	        row.names=FALSE, quote=FALSE )

  str.lines <-  paste(dir,'05-0626-BaTiO3-P4mm.csv',sep='')
  write.csv(rEDP::batio3.c.lines, file=str.lines,
            row.names=FALSE, quote=FALSE )

  str.lines <-  paste(dir,'34-0129-BaTiO3-P63mmc.csv',sep='')
  write.csv(rEDP::batio3.h.lines, file=str.lines,
            row.names=FALSE, quote=FALSE )
}
