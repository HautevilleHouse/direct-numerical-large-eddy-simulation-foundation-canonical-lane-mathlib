import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean

structure SubgridScaleModelPackage where
  eddyViscosity : Type u
  turbulentKineticEnergy : Type v
  modelClosure : Prop
  consistencyWithFilter : Prop

structure SubgridScaleModelEvidence (M : SubgridScaleModelPackage) where
  modelClosureClosed : M.modelClosure
  consistencyWithFilterClosed : M.consistencyWithFilter

def SubgridScaleModelClosed (M : SubgridScaleModelPackage) : Prop :=
  M.modelClosure ∧ M.consistencyWithFilter

theorem subgrid_scale_model_closed_from_evidence
    (M : SubgridScaleModelPackage) (E : SubgridScaleModelEvidence M) :
    SubgridScaleModelClosed M := by
  exact And.intro E.modelClosureClosed E.consistencyWithFilterClosed

end DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean
end HautevilleHouse