import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean

structure SmagorinskyPackage where
  eddyViscosityCoeff : ℝ
  strainRateMagnitude : ℝ
  subgridStressModel : Prop
  dissipationConsistent : Prop

structure SmagorinskyEvidence (S : SmagorinskyPackage) where
  eddyViscosityCoeffClosed : S.eddyViscosityCoeff > 0
  strainRateMagnitudeClosed : S.strainRateMagnitude ≥ 0
  subgridStressModelClosed : S.subgridStressModel
  dissipationConsistentClosed : S.dissipationConsistent

def SmagorinskyClosed (S : SmagorinskyPackage) : Prop :=
  S.eddyViscosityCoeff > 0 ∧ S.strainRateMagnitude ≥ 0 ∧ S.subgridStressModel ∧ S.dissipationConsistent

theorem smagorinsky_closed_from_evidence (S : SmagorinskyPackage) (E : SmagorinskyEvidence S) :
    SmagorinskyClosed S := by
  exact And.intro E.eddyViscosityCoeffClosed
    (And.intro E.strainRateMagnitudeClosed
      (And.intro E.subgridStressModelClosed E.dissipationConsistentClosed))

end DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean
end HautevilleHouse
