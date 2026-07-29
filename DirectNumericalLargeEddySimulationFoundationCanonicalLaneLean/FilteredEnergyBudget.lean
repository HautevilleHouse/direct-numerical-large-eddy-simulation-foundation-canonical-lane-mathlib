import canonicalLaneMathlib.AdmissibleClass
import DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean.NavierStokesFilter

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean

structure FilteredEnergyBudgetPackage {F : NavierStokesFilterPackage} where
  resolvedKineticEnergy : Prop
  subgridDissipation : Prop
  interScaleTransfer : Prop
  conservation : Prop

structure FilteredEnergyBudgetEvidence {F : NavierStokesFilterPackage}
    (B : FilteredEnergyBudgetPackage F) where
  resolvedKineticEnergyClosed : B.resolvedKineticEnergy
  subgridDissipationClosed : B.subgridDissipation
  interScaleTransferClosed : B.interScaleTransfer

def FilteredEnergyBudgetClosed {F : NavierStokesFilterPackage}
    (B : FilteredEnergyBudgetPackage F) : Prop :=
  B.resolvedKineticEnergy ∧ B.subgridDissipation ∧ B.interScaleTransfer

theorem filtered_energy_budget_closed_from_evidence {F : NavierStokesFilterPackage}
    (B : FilteredEnergyBudgetPackage F) (E : FilteredEnergyBudgetEvidence B) :
    FilteredEnergyBudgetClosed B := by
  exact And.intro E.resolvedKineticEnergyClosed
    (And.intro E.subgridDissipationClosed E.interScaleTransferClosed)

end DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean
end HautevilleHouse
