import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationFoundation

structure FilterKernel (α : Type u) [TopologicalSpace α] where
  kernel : α → ℝ
  positive : ∀ x, kernel x ≥ 0
  normalization : ∫ x, kernel x ∂(volume) = 1

def filterClosed (K : FilterKernel ℝ) : Prop :=
  K.positive (0 : ℝ) ∧ K.normalization

structure FilterKernelEvidence (K : FilterKernel ℝ) where
  positiveClosed : K.positive (0 : ℝ)
  normalizationClosed : K.normalization

theorem filter_closed_from_evidence (K : FilterKernel ℝ) (E : FilterKernelEvidence K) : filterClosed K := by
  exact And.intro E.positiveClosed E.normalizationClosed

end DirectNumericalLargeEddySimulationFoundation
end HautevilleHouse
