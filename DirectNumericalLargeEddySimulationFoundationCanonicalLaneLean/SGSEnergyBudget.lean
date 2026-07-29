import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean

structure SGSEnergyBudgetPackage where
  productionTerm : Type u
  dissipationTerm : Type v
  transportTerm : Type w
  budgetEquation : Prop

structure SGSEnergyBudgetEvidence (B : SGSEnergyBudgetPackage) where
  budgetEquationClosed : B.budgetEquation

def SGSEnergyBudgetClosed (B : SGSEnergyBudgetPackage) : Prop :=
  B.budgetEquation

theorem sgs_energy_budget_closed_from_evidence
    (B : SGSEnergyBudgetPackage) (E : SGSEnergyBudgetEvidence B) :
    SGSEnergyBudgetClosed B := by
  exact E.budgetEquationClosed

end DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean
end HautevilleHouse