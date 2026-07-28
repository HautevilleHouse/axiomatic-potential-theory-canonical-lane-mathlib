import AxiomaticPotentialTheoryCanonicalLaneLean.SheafHarmonicFunctions

namespace HautevilleHouse
namespace AxiomaticPotentialTheoryCanonicalLaneLean

structure BalayageTheoryPackage {S : SheafHarmonicFunctionsPackage} where
  balayageOperator : (U : Set S.baseSpace.carrier) → (f : S.baseSpace.carrier → ℝ) → (S.baseSpace.carrier → ℝ)
  harmonicOnComplement : (U : Set S.baseSpace.carrier) → (f : S.baseSpace.carrier → ℝ) → Prop
  dominationPrinciple : Prop
  convergenceProperty : Prop
  fineTopologyContinuity : Prop

structure BalayageTheoryEvidence {S : SheafHarmonicFunctionsPackage}
    (B : BalayageTheoryPackage S) where
  dominationPrincipleClosed : B.dominationPrinciple
  convergencePropertyClosed : B.convergenceProperty
  fineTopologyContinuityClosed : B.fineTopologyContinuity

def BalayageTheoryClosed {S : SheafHarmonicFunctionsPackage}
    (B : BalayageTheoryPackage S) : Prop :=
  B.dominationPrinciple ∧ B.convergenceProperty ∧ B.fineTopologyContinuity

theorem balayage_theory_closed_from_evidence
    {S : SheafHarmonicFunctionsPackage} (B : BalayageTheoryPackage S)
    (E : BalayageTheoryEvidence B) : BalayageTheoryClosed B := by
  exact And.intro E.dominationPrincipleClosed
    (And.intro E.convergencePropertyClosed E.fineTopologyContinuityClosed)

end AxiomaticPotentialTheoryCanonicalLaneLean
end HautevilleHouse
