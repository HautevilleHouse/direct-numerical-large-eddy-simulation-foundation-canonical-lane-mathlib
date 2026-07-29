import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean

structure NavierStokesEquationsPackage where
  velocityField : Type u
  pressureField : Type v
  continuityEquation : Prop
  momentumEquation : Prop
  initialBoundaryConditions : Prop

structure NavierStokesEquationsEvidence (P : NavierStokesEquationsPackage) where
  continuityEquationClosed : P.continuityEquation
  momentumEquationClosed : P.momentumEquation
  initialBoundaryConditionsClosed : P.initialBoundaryConditions

def NavierStokesEquationsClosed (P : NavierStokesEquationsPackage) : Prop :=
  P.continuityEquation ∧ P.momentumEquation ∧ P.initialBoundaryConditions

theorem navier_stokes_equations_closed_from_evidence
    (P : NavierStokesEquationsPackage) (E : NavierStokesEquationsEvidence P) :
    NavierStokesEquationsClosed P := by
  exact And.intro E.continuityEquationClosed
    (And.intro E.momentumEquationClosed E.initialBoundaryConditionsClosed)

end DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean
end HautevilleHouse