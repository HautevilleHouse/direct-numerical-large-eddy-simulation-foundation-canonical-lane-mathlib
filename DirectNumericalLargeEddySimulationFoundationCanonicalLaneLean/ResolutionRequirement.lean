import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean

structure GridResolutionPackage where
  meshSpacing : ℝ
  kolmogorovScale : ℝ
  cellReynoldsNumber : ℝ
  aliasingErrorBound : Prop
  nyquistCriterionSatisfied : Prop

structure ResolutionEvidence (G : GridResolutionPackage) where
  cellReynoldsNumberBelowOne : G.cellReynoldsNumber < 1
  aliasingErrorBoundClosed : G.aliasingErrorBound
  nyquistCriterionSatisfiedClosed : G.nyquistCriterionSatisfied

def ResolutionRequirementClosed (G : GridResolutionPackage) : Prop :=
  G.cellReynoldsNumber < 1 ∧ G.aliasingErrorBound ∧ G.nyquistCriterionSatisfied

theorem resolution_requirement_closed_from_evidence (G : GridResolutionPackage)
    (E : ResolutionEvidence G) : ResolutionRequirementClosed G := by
  exact And.intro E.cellReynoldsNumberBelowOne
    (And.intro E.aliasingErrorBoundClosed E.nyquistCriterionSatisfiedClosed)

end DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean
end HautevilleHouse