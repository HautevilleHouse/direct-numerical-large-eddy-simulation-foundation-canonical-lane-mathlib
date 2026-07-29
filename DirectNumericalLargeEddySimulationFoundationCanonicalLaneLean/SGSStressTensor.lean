import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean.FilterKernelBridge

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean

structure SGSStressTensor where
  resolvedPart : Type
  subgridPart : Type
  anisotropy : Prop
  dissipation : Prop

structure SGSStressTensorEvidence (S : SGSStressTensor) where
  anisotropyClosed : S.anisotropy
  dissipationClosed : S.dissipation

def SGSStressTensorClosed (S : SGSStressTensor) : Prop :=
  S.anisotropy ∧ S.dissipation

theorem sgs_stress_tensor_closed_from_evidence (S : SGSStressTensor)
    (E : SGSStressTensorEvidence S) : SGSStressTensorClosed S := by
  exact And.intro E.anisotropyClosed E.dissipationClosed

end DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean
end HautevilleHouse