#' @title Install GitHub packages from hub.fastgit.org
#'
#' @description
#' When you want to download an R package on Github, but you can't access Github,
#' this function helps you download and install the package from another website,
#' which is in real-time sync with Github.
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