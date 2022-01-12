#' @title Install R packages on Github from hub.fastgit.org
#'
#' @description
#' When you want to install an R package on GitHub, but you can't access GitHub,
#' this function helps you download and install the package from another website,
#' which is in real-time sync with GitHub.
#'
#' @param x Repository address in the format username/repo.  
#'
#' @examples
#'
#' # Example
#' ig("yihui/xfun")
#'
#' @export

################################################################################

# Install GitHub packages from another repo
ig = function(x) {
  url = paste0("https://hub.fastgit.org/", x, ".git")
  remotes::install_git(url) 
}

################################################################################