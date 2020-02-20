#' Summarise classes
#' @param df A dataframe
#' @return A dataframe summarising the column classes
#' @export
summarise_classes <- function(df) {
  df %>%
    purrr::map_df(~class(.x)) %>%
    tidyr::pivot_longer(cols = tidyselect::everything(), names_to = "col_name", values_to = "class")
}
