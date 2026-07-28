import AxiomaticPotentialTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticPotentialTheoryCanonicalLaneLean

structure PotentialKernelPackage where
  kernel : Type u → Type v
  positive : Prop
  continuous : Prop
  completeMaximumPrinciple : Prop

structure PotentialKernelEvidence (K : PotentialKernelPackage) where
  positiveClosed : K.positive
  continuousClosed : K.continuous
  completeMaximumPrincipleClosed : K.completeMaximumPrinciple

def PotentialKernelPackageClosed (K : PotentialKernelPackage) : Prop :=
  K.positive ∧ K.continuous ∧ K.completeMaximumPrinciple

theorem potential_kernel_package_closed_from_evidence
    (K : PotentialKernelPackage) (E : PotentialKernelEvidence K) :
    PotentialKernelPackageClosed K := by
  exact And.intro E.positiveClosed
    (And.intro E.continuousClosed E.completeMaximumPrincipleClosed)

end AxiomaticPotentialTheoryCanonicalLaneLean
end HautevilleHouse
