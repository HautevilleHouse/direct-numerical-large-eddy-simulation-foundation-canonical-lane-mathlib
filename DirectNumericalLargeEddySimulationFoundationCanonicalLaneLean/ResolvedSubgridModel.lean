import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean.FilterKernelBridge

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean

structure ResolvedSubgridModel (K : FilterKernel) where
  resolvedScale : Type
  subgridScale : Type
  energyTransferModel : Prop
  closureAssumption : Prop

structure ResolvedSubgridModelEvidence {K : FilterKernel}
    (M : ResolvedSubgridModel K) where
  energyTransferClosed : M.energyTransferModel
  closureAssumptionClosed : M.closureAssumption

def ResolvedSubgridModelClosed {K : FilterKernel}
    (M : ResolvedSubgridModel K) : Prop :=
  M.energyTransferModel ∧ M.closureAssumption

theorem resolved_subgrid_model_closed_from_evidence
    {K : FilterKernel} (M : ResolvedSubgridModel K)
    (E : ResolvedSubgridModelEvidence M) : ResolvedSubgridModelClosed M := by
  exact And.intro E.energyTransferClosed E.closureAssumptionClosed

end DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean
end HautevilleHouse