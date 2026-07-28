import AxiomaticPotentialTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticPotentialTheoryCanonicalLaneLean

structure CapacityPackage where
  sets : Type u
  capacity : Set (sets) → ℝ≥0
  subadditivity : Prop
  monotonicity : Prop
  capacityZeroPolar : Prop

structure CapacityEvidence (C : CapacityPackage) where
  subadditivityClosed : C.subadditivity
  monotonicityClosed : C.monotonicity
  capacityZeroPolarClosed : C.capacityZeroPolar

def CapacityPackageClosed (C : CapacityPackage) : Prop :=
  C.subadditivity ∧ C.monotonicity ∧ C.capacityZeroPolar

theorem capacity_package_closed_from_evidence
    (C : CapacityPackage) (E : CapacityEvidence C) :
    CapacityPackageClosed C := by
  exact And.intro E.subadditivityClosed
    (And.intro E.monotonicityClosed E.capacityZeroPolarClosed)

end AxiomaticPotentialTheoryCanonicalLaneLean
end HautevilleHouse
