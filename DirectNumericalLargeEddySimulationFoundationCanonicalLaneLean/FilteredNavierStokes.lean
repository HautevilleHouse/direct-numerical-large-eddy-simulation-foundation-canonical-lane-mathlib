import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean

structure FilteredNavierStokesPackage where
  filterKernel : Type
  filteredVelocityField : Type u
  filteredPressureField : Type v
  subgridStressTensor : Type w
  resolvedKineticEnergy : Prop
  interScaleTransfer : Prop

structure FilteredNavierStokesEvidence
    (F : FilteredNavierStokesPackage) where
  resolvedKineticEnergyClosed : F.resolvedKineticEnergy
  interScaleTransferClosed : F.interScaleTransfer

def FilteredNavierStokesClosed (F : FilteredNavierStokesPackage) : Prop :=
  F.resolvedKineticEnergy ∧ F.interScaleTransfer

theorem filtered_navier_stokes_closed_from_evidence
    (F : FilteredNavierStokesPackage)
    (E : FilteredNavierStokesEvidence F) : FilteredNavierStokesClosed F := by
  exact And.intro E.resolvedKineticEnergyClosed E.interScaleTransferClosed

end DirectNumericalLargeEddySimulationFoundationCanonicalLaneLean
end HautevilleHouse