import AxiomaticPotentialTheoryCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace AxiomaticPotentialTheoryCanonicalLaneLean

def ConstrainedPotentialTheoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_potential_theory_endgame (A : AdmissibleClass) :
    ConstrainedPotentialTheoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AxiomaticPotentialTheoryCanonicalLaneLean
end HautevilleHouse
