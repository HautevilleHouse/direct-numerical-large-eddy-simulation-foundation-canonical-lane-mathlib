import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean

structure NumericalDiscretizationPackage where
  spatialScheme : Type u
  temporalScheme : Type v
  stability : Prop
  consistency : Prop
  convergence : Prop

structure NumericalDiscretizationEvidence (D : NumericalDiscretizationPackage) where
  stabilityClosed : D.stability
  consistencyClosed : D.consistency
  convergenceClosed : D.convergence

def NumericalDiscretizationClosed (D : NumericalDiscretizationPackage) : Prop :=
  D.stability ∧ D.consistency ∧ D.convergence

theorem numerical_discretization_closed_from_evidence
    (D : NumericalDiscretizationPackage) (E : NumericalDiscretizationEvidence D) :
    NumericalDiscretizationClosed D := by
  exact And.intro E.stabilityClosed (And.intro E.consistencyClosed E.convergenceClosed)

end DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean
end HautevilleHouse