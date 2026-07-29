import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean

structure LESFilteringPackage where
  filterKernel : Type u
  filteredVelocity : Type v
  subgridStress : Type w
  filterCommutativity : Prop

structure LESFilteringEvidence (F : LESFilteringPackage) where
  filterCommutativityClosed : F.filterCommutativity

def LESFilteringClosed (F : LESFilteringPackage) : Prop :=
  F.filterCommutativity

theorem les_filtering_closed_from_evidence
    (F : LESFilteringPackage) (E : LESFilteringEvidence F) :
    LESFilteringClosed F := by
  exact E.filterCommutativityClosed

end DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean
end HautevilleHouse