import HautevilleHouse.AxiomaticPotentialTheoryCanonicalLaneLean.Capacity

namespace HautevilleHouse
namespace AxiomaticPotentialTheoryCanonicalLaneLean

structure BoundaryHarnackPackage {H : HarmonicSpacePackage}
    {K : PotentialKernelPackage H} {B : BalayagePackage H K}
    {C : CapacityPackage H K B} where
  boundaryEstimate : Prop
  harnackInequality : Prop
  carlesonEstimate : Prop

structure BoundaryHarnackEvidence {H : HarmonicSpacePackage}
    {K : PotentialKernelPackage H} {B : BalayagePackage H K}
    {C : CapacityPackage H K B}
    (BH : BoundaryHarnackPackage H K B C) where
  boundaryEstimateClosed : BH.boundaryEstimate
  harnackInequalityClosed : BH.harnackInequality
  carlesonEstimateClosed : BH.carlesonEstimate

def BoundaryHarnackClosed {H : HarmonicSpacePackage}
    {K : PotentialKernelPackage H} {B : BalayagePackage H K}
    {C : CapacityPackage H K B}
    (BH : BoundaryHarnackPackage H K B C) : Prop :=
  BH.boundaryEstimate ∧ BH.harnackInequality ∧ BH.carlesonEstimate

theorem boundary_harnack_closed_from_evidence
    {H : HarmonicSpacePackage} {K : PotentialKernelPackage H}
    {B : BalayagePackage H K} {C : CapacityPackage H K B}
    (BH : BoundaryHarnackPackage H K B C)
    (E : BoundaryHarnackEvidence BH) : BoundaryHarnackClosed BH := by
  exact And.intro E.boundaryEstimateClosed
    (And.intro E.harnackInequalityClosed E.carlesonEstimateClosed)

end AxiomaticPotentialTheoryCanonicalLaneLean
end HautevilleHouse