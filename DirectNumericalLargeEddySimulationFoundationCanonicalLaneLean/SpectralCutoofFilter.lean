import canonicalLaneMathlib.AdmissibleClass
import DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean.NavierStokesFilter

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean

structure SpectralCutoofFilterPackage {F : NavierStokesFilterPackage} where
  cuttofWavenumber : ℕ
  spectralProjection : Prop
  aliasingError : Prop
  filteredConvolution : Prop

structure SpectralCutoofFilterEvidence {F : NavierStokesFilterPackage}
    (C : SpectralCutoofFilterPackage F) where
  spectralProjectionClosed : C.spectralProjection
  aliasingErrorClosed : C.aliasingError

def SpectralCutoofFilterClosed {F : NavierStokesFilterPackage}
    (C : SpectralCutoofFilterPackage F) : Prop :=
  C.spectralProjection ∧ C.aliasingError

theorem spectral_cutoof_filter_closed_from_evidence {F : NavierStokesFilterPackage}
    (C : SpectralCutoofFilterPackage F) (E : SpectralCutoofFilterEvidence C) :
    SpectralCutoofFilterClosed C := by
  exact And.intro E.spectralProjectionClosed E.aliasingErrorClosed

end DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean
end HautevilleHouse
