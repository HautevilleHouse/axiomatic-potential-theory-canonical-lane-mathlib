import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticPotentialTheoryCanonicalLaneLean

structure HarmonicSpacePackage where
  sheafProperty : Prop
  resolutiveFunctions : Prop
  balayageOperator : Prop
  capacityControl : Prop

structure HarmonicSpaceEvidence (H : HarmonicSpacePackage) where
  sheafPropertyClosed : H.sheafProperty
  resolutiveFunctionsClosed : H.resolutiveFunctions
  balayageOperatorClosed : H.balayageOperator
  capacityControlClosed : H.capacityControl

def HarmonicSpaceClosed (H : HarmonicSpacePackage) : Prop :=
  H.sheafProperty ∧ H.resolutiveFunctions ∧ H.balayageOperator ∧ H.capacityControl

theorem harmonic_space_closed_from_evidence (H : HarmonicSpacePackage) (E : HarmonicSpaceEvidence H) :
    HarmonicSpaceClosed H := by
  exact And.intro E.sheafPropertyClosed
    (And.intro E.resolutiveFunctionsClosed
      (And.intro E.balayageOperatorClosed E.capacityControlClosed))

end AxiomaticPotentialTheoryCanonicalLaneLean
end HautevilleHouse