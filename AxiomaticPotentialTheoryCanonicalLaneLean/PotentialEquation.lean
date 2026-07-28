import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticPotentialTheoryCanonicalLaneLean

structure PotentialEquationPackage where
  harmonicSpace : HarmonicSpacePackage
  potentialFunction : Type u
  equation : Prop
  ellipticRegularity : Prop
  maximumPrinciple : Prop
  growthCondition : Prop

structure PotentialEquationEvidence (P : PotentialEquationPackage) where
  equationClosed : P.equation
  ellipticRegularityClosed : P.ellipticRegularity
  maximumPrincipleClosed : P.maximumPrinciple
  growthConditionClosed : P.growthCondition

def PotentialEquationClosed (P : PotentialEquationPackage) : Prop :=
  P.equation ∧ P.ellipticRegularity ∧ P.maximumPrinciple ∧ P.growthCondition

theorem potential_equation_closed_from_evidence (P : PotentialEquationPackage)
    (E : PotentialEquationEvidence P) : PotentialEquationClosed P := by
  exact And.intro E.equationClosed
    (And.intro E.ellipticRegularityClosed
      (And.intro E.maximumPrincipleClosed E.growthConditionClosed))

end AxiomaticPotentialTheoryCanonicalLaneLean
end HautevilleHouse