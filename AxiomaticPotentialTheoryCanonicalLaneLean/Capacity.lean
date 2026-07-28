import HautevilleHouse.AxiomaticPotentialTheoryCanonicalLaneLean.Balayage

namespace HautevilleHouse
namespace AxiomaticPotentialTheoryCanonicalLaneLean

structure CapacityPackage {H : HarmonicSpacePackage}
    {K : PotentialKernelPackage H} {B : BalayagePackage H K} where
  capacityFunctional : Type u
  subadditivity : Prop
  choquetProperty : Prop

structure CapacityEvidence {H : HarmonicSpacePackage}
    {K : PotentialKernelPackage H} {B : BalayagePackage H K}
    (C : CapacityPackage H K B) where
  subadditivityClosed : C.subadditivity
  choquetPropertyClosed : C.choquetProperty

def CapacityClosed {H : HarmonicSpacePackage}
    {K : PotentialKernelPackage H} {B : BalayagePackage H K}
    (C : CapacityPackage H K B) : Prop :=
  C.subadditivity ∧ C.choquetProperty

theorem capacity_closed_from_evidence
    {H : HarmonicSpacePackage} {K : PotentialKernelPackage H}
    {B : BalayagePackage H K} (C : CapacityPackage H K B)
    (E : CapacityEvidence C) : CapacityClosed C := by
  exact And.intro E.subadditivityClosed E.choquetPropertyClosed

end AxiomaticPotentialTheoryCanonicalLaneLean
end HautevilleHouse