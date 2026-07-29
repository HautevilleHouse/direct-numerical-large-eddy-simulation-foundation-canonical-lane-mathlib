import canonicalLaneMathlib.AdmissibleClass
import DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean.FilterShapeDesign
import DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean.SmagorinskyClosure
import DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean.TurbulentEnergyCascade

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean

def ConstrainedLESClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_les_endgame (A : AdmissibleClass) :
    ConstrainedLESClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean
end HautevilleHouse
