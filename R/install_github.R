#' @title Install R packages on GitHub via the proxy site https://ghproxy.com
#'
#' @description
#' When you want to install an R package on GitHub, but you can't access GitHub,
#' this function helps you download and install the package on GitHub via the
#' proxy website <https://ghproxy.com/>, which is in real-time sync with GitHub.
#'
#' @param pkg Repository address in the format username/repo.  
#'
#' @examples
#'
#' # Example
#' # install_github("yihui/xfun")
#'
#' @export

#------------------------------------------------------------------------------#

# Install GitHub packages via the proxy site https://ghproxy.com
install_github = function(pkg) {
  url = paste0("https://ghproxy.com/https://github.com/", pkg, ".git")
  remotes::install_git(url) 
}

#------------------------------------------------------------------------------#