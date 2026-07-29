import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AdmissibleClass.bridgeClosed A

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean
end HautevilleHouse