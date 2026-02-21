#' Economo & Koskinas Cytoarchitectonic Atlas
#'
#' Brain atlas based on the historical Economo & Koskinas 1925
#' cytoarchitectonic parcellation with 15 regions per hemisphere.
#' Contains both 2D polygon geometry for [ggseg::geom_brain()] and
#' 3D vertex indices for [ggseg3d::ggseg3d()].
#'
#' @family ggseg_atlases
#'
#' @references C.F. von Economo, G.N. Koskinas; Die Cytoarchitektonik Der
#'   Hirnrinde Des Erwachsenen Menschen; J. Springer (1925)
#'
#'   Pijnenburg et al., NeuroImage, 239, 2021,
#'   \doi{10.1016/j.neuroimage.2021.118274}
#'
#' @return A [ggseg.formats::ggseg_atlas] object (cortical).
#' @import ggseg.formats
#' @export
#' @examples
#' economo()
economo <- function() .economo
