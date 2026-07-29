import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean

structure FourierCutoffPackage where
  filterType : String
  cutoffWavenumber : ℝ
  spectralSharpness : Prop
  aliasingSuppression : Prop

def FourierFilteringClosed (F : FourierCutoffPackage) : Prop :=
  F.cutoffWavenumber > 0 ∧ F.spectralSharpness ∧ F.aliasingSuppression

structure FourierFilteringEvidence (F : FourierCutoffPackage) where
  cutoffWavenumberPositive : F.cutoffWavenumber > 0
  spectralSharpnessClosed : F.spectralSharpness
  aliasingSuppressionClosed : F.aliasingSuppression

theorem fourier_filtering_closed_from_evidence (F : FourierCutoffPackage)
    (E : FourierFilteringEvidence F) : FourierFilteringClosed F := by
  exact And.intro E.cutoffWavenumberPositive
    (And.intro E.spectralSharpnessClosed E.aliasingSuppressionClosed)

end DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean
end HautevilleHouse