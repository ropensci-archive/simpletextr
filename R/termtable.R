

#' @title Convert text to a term table
#'
#' @param text character vector of text / documents
#' @param n integer exclude terms with cont less than n
#'
#' @return data.frame
#' @export
#'
#' @examples
term_table <- function(text, n = 5){

  # tokenize on space and output as a list:
  doc.list <- strsplit(text, "[[:space:]]+")

  # compute the table of terms:
  term.table <- table(unlist(doc.list))
  term.table <- sort(term.table, decreasing = TRUE)

  # remove terms that are stop words or occur fewer than n times:
  del <- term.table < n
  term.table <- term.table[!del]

  return(
    data.frame(term = names(term.table),
               count = as.numeric(term.table),
               stringsAsFactors = FALSE)
  )

}
