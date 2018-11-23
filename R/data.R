
#' @title 1000 rstats tweets.
#'
#' @description A dataset containing the 1000 recent tweets including the #rstats hashtag.
#' Data retrieved 23rd November 2018 using code:
#' \code{
#' rstats_tweets <- searchTwitter('#rstats', n=1000) %>%
#'     twListToDF()
#' }
#' @format A data frame with 1000 rows and 16 variables:
#' \describe{
#'   \item{text}{content of tweet}
#'   \item{favorited}{is the tweet favourited}
#'   \item{favoriteCount}{number of likes}
#'   \item{created}{date of the tweet}
#'   \item{truncated}{is the tweet truncated}
#'   \item{id}{tweet id}
#'   ...
#' }
#' @source \url{http://twitter.com}
"rstats_tweets"


#' @title ozunconf18 tweets.
#'
#' @description A dataset containing recent tweets including the #ozunconf18 hashtag.
#' Data retrieved 22nd November 2018 using code:
#' \code{
#' rstats_tweets <- searchTwitter('#ozunconf18', n=1000) %>%
#'     twListToDF()
#' }
#' @format A data frame with 1000 rows and 16 variables:
#' \describe{
#'   \item{text}{content of tweet}
#'   \item{favorited}{is the tweet favourited}
#'   \item{favoriteCount}{number of likes}
#'   \item{created}{date of the tweet}
#'   \item{truncated}{is the tweet truncated}
#'   \item{id}{tweet id}
#'   ...
#' }
#' @source \url{http://twitter.com}
"ozunconf18_tweets"
