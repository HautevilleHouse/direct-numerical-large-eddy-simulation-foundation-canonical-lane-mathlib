import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean.ResolvedSubgridModel

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean

structure FiniteVolumeDiscretization (K : FilterKernel) (M : ResolvedSubgridModel K) where
  meshType : Type
  numericalFlux : Prop
  conservationProperty : Prop
  stabilityProperty : Prop

structure FiniteVolumeDiscretizationEvidence {K : FilterKernel}
    {M : ResolvedSubgridModel K} (D : FiniteVolumeDiscretization K M) where
  numericalFluxClosed : D.numericalFlux
  conservationClosed : D.conservationProperty
  stabilityClosed : D.stabilityProperty

def FiniteVolumeDiscretizationClosed {K : FilterKernel}
    {M : ResolvedSubgridModel K} (D : FiniteVolumeDiscretization K M) : Prop :=
  D.numericalFlux ∧ D.conservationProperty ∧ D.stabilityProperty

theorem finite_volume_discretization_closed_from_evidence
    {K : FilterKernel} {M : ResolvedSubgridModel K}
    (D : FiniteVolumeDiscretization K M)
    (E : FiniteVolumeDiscretizationEvidence D) : FiniteVolumeDiscretizationClosed D := by
  exact And.intro E.numericalFluxClosed
    (And.intro E.conservationClosed E.stabilityClosed)

end DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean
end HautevilleHouse