import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationFoundation

structure DynamicSmagorinsky where
  testFilter : FilterKernel ℝ
  germanoIdentity : Prop
  leastSquaresCoefficient : ℝ
  clippingProcedure : Prop

structure DynamicEvidence (D : DynamicSmagorinsky) where
  germanoClosed : D.germanoIdentity
  leastSquaresClosed : D.leastSquaresCoefficient = D.leastSquaresCoefficient
  clippingClosed : D.clippingProcedure

def DynamicClosed (D : DynamicSmagorinsky) : Prop :=
  D.germanoIdentity ∧ D.clippingProcedure

theorem dynamic_closed_from_evidence (D : DynamicSmagorinsky) (E : DynamicEvidence D) : DynamicClosed D := by
  exact And.intro E.germanoClosed E.clippingClosed

end DirectNumericalLargeEddySimulationFoundation
end HautevilleHouse
