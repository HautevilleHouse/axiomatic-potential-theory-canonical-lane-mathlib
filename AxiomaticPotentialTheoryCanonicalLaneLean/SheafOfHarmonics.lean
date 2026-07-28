import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticPotentialTheoryCanonicalLaneLean

structure SheafOfHarmonicsPackage where
  harmonicSpace : HarmonicSpacePackage
  presheaf : (Set underlyingSpace → Type u)
  restrictionMaps : Prop
  gluingCondition : Prop
  sheafAxiom : Prop
  stalkExactness : Prop

structure SheafOfHarmonicsEvidence (S : SheafOfHarmonicsPackage) where
  restrictionMapsClosed : S.restrictionMaps
  gluingConditionClosed : S.gluingCondition
  sheafAxiomClosed : S.sheafAxiom
  stalkExactnessClosed : S.stalkExactness

def SheafOfHarmonicsClosed (S : SheafOfHarmonicsPackage) : Prop :=
  S.restrictionMaps ∧ S.gluingCondition ∧ S.sheafAxiom ∧ S.stalkExactness

theorem sheaf_of_harmonics_closed_from_evidence (S : SheafOfHarmonicsPackage)
    (E : SheafOfHarmonicsEvidence S) : SheafOfHarmonicsClosed S := by
  exact And.intro E.restrictionMapsClosed
    (And.intro E.gluingConditionClosed
      (And.intro E.sheafAxiomClosed E.stalkExactnessClosed))

end AxiomaticPotentialTheoryCanonicalLaneLean
end HautevilleHouse