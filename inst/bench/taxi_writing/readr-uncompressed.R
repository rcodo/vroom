{
  library(vroom)
  data <- vroom(file, col_types = c(pickup_datetime = "c"))
  vroom:::vroom_materialize(data)
}

readr::write_tsv(data, tempfile(fileext = ".tsv"))
