import AxiomaticPotentialTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticPotentialTheoryCanonicalLaneLean

structure SheafHarmonicFunctionsPackage where
  baseSpace : PotentialSpace
  openSets : Set (Set baseSpace.carrier)
  harmonicOnOpen : (U : Set baseSpace.carrier) → Prop
  restrictionMaps : (U V : Set baseSpace.carrier) → (V ⊆ U) → (harmonicOnOpen U → harmonicOnOpen V)
  sheafCondition : Prop
  identityPrinciple : Prop
  convergenceProperty : Prop

structure SheafHarmonicFunctionsEvidence (S : SheafHarmonicFunctionsPackage) where
  sheafConditionClosed : S.sheafCondition
  identityPrincipleClosed : S.identityPrinciple
  convergencePropertyClosed : S.convergenceProperty

def SheafHarmonicFunctionsClosed (S : SheafHarmonicFunctionsPackage) : Prop :=
  S.sheafCondition ∧ S.identityPrinciple ∧ S.convergenceProperty

theorem sheaf_harmonic_functions_closed_from_evidence
    (S : SheafHarmonicFunctionsPackage) (E : SheafHarmonicFunctionsEvidence S) :
    SheafHarmonicFunctionsClosed S := by
  exact And.intro E.sheafConditionClosed
    (And.intro E.identityPrincipleClosed E.convergencePropertyClosed)

end AxiomaticPotentialTheoryCanonicalLaneLean
end HautevilleHouse
