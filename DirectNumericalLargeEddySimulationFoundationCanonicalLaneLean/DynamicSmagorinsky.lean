import canonicalLaneMathlib.AdmissibleClass
import DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean.SubgridScaleModel

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean

structure DynamicSmagorinskyPackage {F : NavierStokesFilterPackage}
    {S : SubgridScaleModelPackage F} where
  germanoIdentity : Prop
  leastSquaresClosure : Prop
  clippedCoefficient : Prop

structure DynamicSmagorinskyEvidence {F : NavierStokesFilterPackage}
    {S : SubgridScaleModelPackage F} (D : DynamicSmagorinskyPackage S) where
  germanoIdentityClosed : D.germanoIdentity
  leastSquaresClosureClosed : D.leastSquaresClosure

def DynamicSmagorinskyClosed {F : NavierStokesFilterPackage}
    {S : SubgridScaleModelPackage F} (D : DynamicSmagorinskyPackage S) : Prop :=
  D.germanoIdentity ∧ D.leastSquaresClosure

theorem dynamic_smagorinsky_closed_from_evidence {F : NavierStokesFilterPackage}
    {S : SubgridScaleModelPackage F} (D : DynamicSmagorinskyPackage S)
    (E : DynamicSmagorinskyEvidence D) : DynamicSmagorinskyClosed D := by
  exact And.intro E.germanoIdentityClosed E.leastSquaresClosureClosed

end DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean
end HautevilleHouse
