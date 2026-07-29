import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean

structure FilterShapePackage where
  lowPassCutoff : ℝ
  transferFunctionSmooth : Prop
  commutationError : Prop
  spectralCompatibility : Prop

structure FilterShapeEvidence (F : FilterShapePackage) where
  lowPassCutoffClosed : F.lowPassCutoff ≥ 0
  transferFunctionSmoothClosed : F.transferFunctionSmooth
  commutationErrorClosed : F.commutationError
  spectralCompatibilityClosed : F.spectralCompatibility

def FilterShapeClosed (F : FilterShapePackage) : Prop :=
  F.lowPassCutoff ≥ 0 ∧ F.transferFunctionSmooth ∧ F.commutationError ∧ F.spectralCompatibility

theorem filter_shape_closed_from_evidence (F : FilterShapePackage) (E : FilterShapeEvidence F) :
    FilterShapeClosed F := by
  exact And.intro E.lowPassCutoffClosed
    (And.intro E.transferFunctionSmoothClosed
      (And.intro E.commutationErrorClosed E.spectralCompatibilityClosed))

end DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean
end HautevilleHouse
