import HautevilleHouse.AxiomaticPotentialTheoryCanonicalLaneLean.PotentialKernel

namespace HautevilleHouse
namespace AxiomaticPotentialTheoryCanonicalLaneLean

structure BalayagePackage {H : HarmonicSpacePackage}
    {K : PotentialKernelPackage H} where
  reductionOperator : Type u
  sweepingPrinciple : Prop
  fineSupport : Prop

structure BalayageEvidence {H : HarmonicSpacePackage}
    {K : PotentialKernelPackage H} (B : BalayagePackage H K) where
  sweepingPrincipleClosed : B.sweepingPrinciple
  fineSupportClosed : B.fineSupport

def BalayageClosed {H : HarmonicSpacePackage}
    {K : PotentialKernelPackage H} (B : BalayagePackage H K) : Prop :=
  B.sweepingPrinciple ∧ B.fineSupport

theorem balayage_closed_from_evidence
    {H : HarmonicSpacePackage} {K : PotentialKernelPackage H}
    (B : BalayagePackage H K) (E : BalayageEvidence B) :
    BalayageClosed B := by
  exact And.intro E.sweepingPrincipleClosed E.fineSupportClosed

end AxiomaticPotentialTheoryCanonicalLaneLean
end HautevilleHouse