import HautevilleHouse.AxiomaticPotentialTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticPotentialTheoryCanonicalLaneLean

structure HarmonicSpacePackage where
  underlyingSpace : Type u
  sheafOfHarmonicFunctions : Type v
  bauerProperty : Prop
  doobConvergence : Prop

structure HarmonicSpaceEvidence (H : HarmonicSpacePackage) where
  bauerPropertyClosed : H.bauerProperty
  doobConvergenceClosed : H.doobConvergence

def HarmonicSpaceClosed (H : HarmonicSpacePackage) : Prop :=
  H.bauerProperty ∧ H.doobConvergence

theorem harmonic_space_closed_from_evidence (H : HarmonicSpacePackage)
    (E : HarmonicSpaceEvidence H) : HarmonicSpaceClosed H := by
  exact And.intro E.bauerPropertyClosed E.doobConvergenceClosed

end AxiomaticPotentialTheoryCanonicalLaneLean
end HautevilleHouse