install.packages("ellmer")
library("ellmer")
chatR <- chat_ollama(
  system_prompt = "Use https://cran.r-project.org/doc/manuals/r-devel/R-exts.html",
  model = "llama3.2:3b-instruct-q4_K_M"
)
ollama_response <- chatR$chat("Why is it better to use importFrom() rather than import() in large packages give me just 2 points for each dont give lengthy answer?")
output <- "ollama_response.txt"
writeLines(ollama_response, output)
shell.exec(output)
