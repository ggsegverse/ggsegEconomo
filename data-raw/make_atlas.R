# Create Economo Atlas
#
# Recreates the economo cortical atlas from the economo
# annotation on fsaverage5 using ggsegExtra.
#
# Requirements:
#   - FreeSurfer installed with fsaverage5 subject
#   - ggsegExtra package
#   - ggseg.formats package
#
# Run with: Rscript data-raw/make_atlas.R

library(dplyr)
library(ggsegExtra)
library(ggseg.formats)

options(freesurfer.verbose = FALSE, rgl.useNULL = TRUE)
progressr::handlers("cli")
progressr::handlers(global = TRUE)

annot_files <- file.path(
  "data-raw", "fsaverage5",
  c("lh.economo.annot", "rh.economo.annot")
)

for (f in annot_files) {
  if (!file.exists(f)) {
    cli::cli_abort("Annotation not found: {.path {f}}")
  }
}

cli::cli_h1("Creating economo cortical atlas")

atlas_raw <- create_cortical_atlas(
  input_annot = annot_files,
  atlas_name = "economo",
  output_dir = "data-raw",
  tolerance = 1,
  smoothness = 2,
  skip_existing = FALSE,
  cleanup = FALSE
)

atlas_raw <- atlas_raw |>
  atlas_region_contextual("unknown", "label")

atlas_raw <- atlas_raw |>
  atlas_view_gather()

economo <- atlas_raw

cli::cli_alert_success("Atlas created with {nrow(economo$core)} regions")
print(economo)

brain_pals <- stats::setNames(
  list(economo$palette),
  economo$atlas
)
save(brain_pals, file = here::here("R/sysdata.rda"), compress = "xz")

usethis::use_data(economo, overwrite = TRUE, compress = "xz")
cli::cli_alert_success("Saved to data/economo.rda")
