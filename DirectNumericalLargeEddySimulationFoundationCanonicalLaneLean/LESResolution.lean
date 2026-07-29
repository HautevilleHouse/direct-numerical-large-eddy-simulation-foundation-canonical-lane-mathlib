import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean

structure LESResolutionPackage where
  resolvedScale : Type u
  unresolvedScale : Type v
  resolutionCriterion : Prop
  scaleSeparation : Prop

structure LESResolutionEvidence (R : LESResolutionPackage) where
  resolutionCriterionClosed : R.resolutionCriterion
  scaleSeparationClosed : R.scaleSeparation

def LESResolutionClosed (R : LESResolutionPackage) : Prop :=
  R.resolutionCriterion ∧ R.scaleSeparation

theorem les_resolution_closed_from_evidence
    (R : LESResolutionPackage) (E : LESResolutionEvidence R) :
    LESResolutionClosed R := by
  exact And.intro E.resolutionCriterionClosed E.scaleSeparationClosed

end DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean
end HautevilleHouse