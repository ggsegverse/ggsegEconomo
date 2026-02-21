# Changelog

## ggsegEconomo 2.0.0

### Breaking changes

- `economo` is now a `ggseg_atlas` object (from ggseg.formats)
  containing both 2D and 3D data. The separate `economo_3d` object has
  been removed.

- Use `ggplot() + ggseg::geom_brain(atlas = economo)` for 2D plots and
  `ggseg3d::ggseg3d(atlas = economo)` for 3D plots – both from the same
  object.

- Atlas recreated from scratch using
  `ggsegExtra::create_cortical_atlas()` from the original fsaverage5
  annotation files.

- `ggseg.formats` is now a hard dependency (in Depends).

- Package URLs updated from `LCBC-UiO` to `ggseg` GitHub organisation.
