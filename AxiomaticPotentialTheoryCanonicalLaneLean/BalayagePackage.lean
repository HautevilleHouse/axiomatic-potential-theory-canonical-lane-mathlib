import AxiomaticPotentialTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticPotentialTheoryCanonicalLaneLean

structure BalayagePackage where
  measures : Type u
  balayageOperator : measures → measures
  idempotence : Prop
  domination : Prop
  continuousBalayage : Prop

structure BalayageEvidence (B : BalayagePackage) where
  idempotenceClosed : B.idempotence
  dominationClosed : B.domination
  continuousBalayageClosed : B.continuousBalayage

def BalayagePackageClosed (B : BalayagePackage) : Prop :=
  B.idempotence ∧ B.domination ∧ B.continuousBalayage

theorem balayage_package_closed_from_evidence
    (B : BalayagePackage) (E : BalayageEvidence B) :
    BalayagePackageClosed B := by
  exact And.intro E.idempotenceClosed
    (And.intro E.dominationClosed E.continuousBalayageClosed)

end AxiomaticPotentialTheoryCanonicalLaneLean
end HautevilleHouse
