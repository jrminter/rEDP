#' Add diffraction lines from an ICDD card
#'
#' Load the d-spacings and intensities for an ICDD file
#' from a .csv file and plot them on the active graph.
#'
#' @param path Path
#' @param card Base file name for the card (w/o the .csv)
#' @param max.ht Maximum plot height
#' @param l.col Color for the lines
#' @param do.legend TRUE or FALSE whether to print legend text
#' @param do.debug TRUE or FALSE whether to print out diagnostics
#'
#' @export
#'
#' @examples
#' # not run
add.icdd.lines <-
function(path='./',
         card='04-0787-Al-Fm3m',
         max.ht=5000,
         l.col='blue',
         do.legend=TRUE,
         do.debug=FALSE){
  # function to add icdd lines
  str.file <- paste(path,card,'.csv',sep='')
  df.lines <- read.csv(file=str.file, header=TRUE, as.is=TRUE)
  max.int <- max(df.lines[,2])
  n.lines <- nrow(df.lines)
  if(do.debug==TRUE) print(n.lines)
  for(i in 1:n.lines){
    d.nm <- 0.1*df.lines[i,1]
    k    <- 2*pi/d.nm
    i.r  <- (1/max.int)*df.lines[i,2]*max.ht
    x.t  <- c(k,k)
    y.t  <- c(0,i.r)
    lines(x.t,y.t, col=l.col)
    if(do.legend){
      legend("topright", card,col=l.col,lty=1)
    }
  }
}
