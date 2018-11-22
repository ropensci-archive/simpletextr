

#' @title Simple text cleaning and stopword removal
#' @description
#'
#' @param text character vector of text / documents
#' @param stop_words character vector of additional words removed from text
#' @param case character one of "tolower" (default) or "toupper"
#' @param remove character vector of non-standard characters to be replaced with a space
#'
#' @importFrom tm stopwords removeWords
#'
#' @return character vector of text / documents
#' @export
#'
#' @examples
clean_text <- function(text, stop_words = NULL, remove = NULL, case = 'tolower'){

  stopifnot(case %in% c('tolower', 'toupper'))

  text <- do.call(case, list(x = text)) # force to lowercase

  text <- gsub("'", "", text)             # remove apostrophes
  text <- gsub("<.*?>", "", text)         # remove html tags
  text <- gsub("[[:punct:]]", " ", text)  # replace punctuation with space
  text <- gsub("[[:digit:]]", " ", text)  # replace numbers with a space
  text <- gsub("[[:cntrl:]]", " ", text)  # replace control characters with space
  text <- gsub("^[[:space:]]+", "", text) # remove whitespace at beginning of documents
  text <- gsub("[[:space:]]+$", "", text) # remove whitespace at end of documents

  # examples for removal c("<br>|</br>", "<(>&<)>", " br ")
  for (i in remove) {
    text <- gsub(i, " ", text)
  }

  if (is.null(stop_words)) {
    stop_words <- stopwords("SMART")
  } else {
    stop_words <- c(stopwords("SMART"), stop_words)
  }

  text <- removeWords(text, stop_words)

  return(text)

}
