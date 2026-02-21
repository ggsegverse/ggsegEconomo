# Economo & Koskinas Cytoarchitectonic Atlas

Brain atlas based on the historical Economo & Koskinas 1925
cytoarchitectonic parcellation with 15 regions per hemisphere. Contains
both 2D polygon geometry for
[`ggseg::geom_brain()`](https://ggsegverse.github.io/ggseg/reference/ggbrain.html)
and 3D vertex indices for
[`ggseg3d::ggseg3d()`](https://lcbc-uio.github.io/ggseg3d//reference/ggseg3d.html).

## Usage

``` r
economo()
```

## Value

A
[ggseg.formats::ggseg_atlas](https://ggsegverse.github.io/ggseg.formats/reference/ggseg_atlas.html)
object (cortical).

## References

C.F. von Economo, G.N. Koskinas; Die Cytoarchitektonik Der Hirnrinde Des
Erwachsenen Menschen; J. Springer (1925)

Pijnenburg et al., NeuroImage, 239, 2021,
[doi:10.1016/j.neuroimage.2021.118274](https://doi.org/10.1016/j.neuroimage.2021.118274)

## Examples

``` r
economo()
#> 
#> ── economo ggseg atlas ─────────────────────────────────────────────────────────
#> Type: cortical
#> Regions: 15
#> Hemispheres: left, right
#> Views: inferior, lateral, medial, superior
#> Palette: ✔
#> Rendering: ✔ ggseg
#> ✔ ggseg3d (vertices)
#> ────────────────────────────────────────────────────────────────────────────────
#> # A tibble: 30 × 3
#>    hemi  region               label                  
#>    <chr> <chr>                <chr>                  
#>  1 left  CT1                  lh_CT1                 
#>  2 left  CT1_2_fro_inf        lh_CT1_2_fro_inf       
#>  3 left  CT1_2_mof            lh_CT1_2_mof           
#>  4 left  CT1_2_pref_ins_postc lh_CT1_2_pref_ins_postc
#>  5 left  CT1_2_temp           lh_CT1_2_temp          
#>  6 left  CT2_fro              lh_CT2_fro             
#>  7 left  CT2_par              lh_CT2_par             
#>  8 left  CT3_fro              lh_CT3_fro             
#>  9 left  CT3_par              lh_CT3_par             
#> 10 left  CT4_occ              lh_CT4_occ             
#> 11 left  CT4_dmpf             lh_CT4_dmpf            
#> 12 left  CT5_cen              lh_CT5_cen             
#> 13 left  CT5_ins              lh_CT5_ins             
#> 14 left  CT5_med              lh_CT5_med             
#> 15 left  CT5_occ              lh_CT5_occ             
#> 16 right CT1                  rh_CT1                 
#> 17 right CT1_2_fro_inf        rh_CT1_2_fro_inf       
#> 18 right CT1_2_mof            rh_CT1_2_mof           
#> 19 right CT1_2_pref_ins_postc rh_CT1_2_pref_ins_postc
#> 20 right CT1_2_temp           rh_CT1_2_temp          
#> 21 right CT2_fro              rh_CT2_fro             
#> 22 right CT2_par              rh_CT2_par             
#> 23 right CT3_fro              rh_CT3_fro             
#> 24 right CT3_par              rh_CT3_par             
#> 25 right CT4_occ              rh_CT4_occ             
#> 26 right CT4_dmpf             rh_CT4_dmpf            
#> 27 right CT5_cen              rh_CT5_cen             
#> 28 right CT5_ins              rh_CT5_ins             
#> 29 right CT5_med              rh_CT5_med             
#> 30 right CT5_occ              rh_CT5_occ             
```
