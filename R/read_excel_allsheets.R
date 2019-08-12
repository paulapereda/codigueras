#' Leer todas las hojas de un libro .xlsx
#'
#' Función para leer todas las hojas de un mismo libro .xlsx
#' @title Codiguera NCM.
#' @description Función para leer todas las hojas de un mismo libro .xlsx al mismo tiempo y las almacena en una lista.
#' @keywords allsheets
#' @export
#' @import
#'
#' @examples
#' read_excel_allsheets()


read_excel_allsheets <- function(filename) {
  sheets <- readxl::excel_sheets(filename)
  x <- lapply(sheets, function(X) readxl::read_excel(filename, sheet = X, .name_repair = janitor::make_clean_names))
  names(x) <- sheets
  x
}
