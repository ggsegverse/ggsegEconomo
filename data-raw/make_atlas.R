# Create Economo & Koskinas Atlas
#
# Recreates the economo cortical atlas from the economo
# annotation on fsaverage5 using ggseg.extra vertex projection pipeline.
#
# Requirements:
#   - FreeSurfer installed with fsaverage5 subject
#   - ggseg.extra (>= 2.0.0.9000)
#   - ggseg.formats
#
# Run with: Rscript data-raw/make_atlas.R

library(ggseg.extra)
library(ggseg.formats)

Sys.setenv(FREESURFER_HOME = "/Applications/freesurfer/7.4.1")

annot_files <- file.path(
  here::here("data-raw", "fsaverage5"),
  c("lh.economo.annot", "rh.economo.annot")
)

economo <- create_cortical_from_annotation(
  input_annot = annot_files,
  atlas_name = "economo",
  output_dir = "data-raw",
  tolerance = 0,
  skip_existing = TRUE,
  cleanup = FALSE
) |>
  atlas_region_contextual("unknown", "label")

print(economo)
plot(economo)

.economo <- economo
usethis::use_data(.economo, overwrite = TRUE, compress = "xz", internal = TRUE)
