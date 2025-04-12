#' Get Exported Functions from a Package using ellmer + llama3.2:3b
#' @param pkg_name Name of the R package (as a string)
#' @return Character vector of exported functions (hypothetical)
#' @export
get_exported_functions <- function(pkg_name) {
  model <- ellmer::ollama(
    model = "llama3.2:3b-instruct-q4_K_M",
    system_prompt = paste0(
      "Now you are an R documentation expert , you know all about the R packages and extensions. Pretend to extract the exported functions of the package '",
      pkg_name,
      "'. Now your output must be a simple R character vector."
    )
  )

  prompt <- paste0(
    "Now list all the exported functions from the R package '", pkg_name,
    "' in the form of a character vector."
  )

  result <- model$chat(prompt)
  return(result)
}
