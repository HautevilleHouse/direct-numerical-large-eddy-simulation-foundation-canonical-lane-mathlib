import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean

structure FilterKernel where
  kernelFunction : Type
  filterWidth : ℝ
  localizationProperty : Prop
  normalizationProperty : Prop

structure FilterKernelEvidence (K : FilterKernel) where
  localizationClosed : K.localizationProperty
  normalizationClosed : K.normalizationProperty

def FilterKernelClosed (K : FilterKernel) : Prop :=
  K.localizationProperty ∧ K.normalizationProperty

theorem filter_kernel_closed_from_evidence (K : FilterKernel)
    (E : FilterKernelEvidence K) : FilterKernelClosed K := by
  exact And.intro E.localizationClosed E.normalizationClosed

end DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean
end HautevilleHouse