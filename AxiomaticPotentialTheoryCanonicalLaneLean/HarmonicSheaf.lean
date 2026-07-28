import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace AxiomaticPotentialTheoryCanonicalLaneLean

structure HarmonicSheafPackage where
  baseSpace : Type u
  topology : TopologicalSpace baseSpace
  sheafOfFunctions : Type v
  harmonicCondition : Prop
  sheafAxioms : Prop
  harmonicFunctionDefined : Prop
  sheafCohomology : Prop

structure HarmonicSheafEvidence (H : HarmonicSheafPackage) where
  harmonicConditionClosed : H.harmonicCondition
  sheafAxiomsClosed : H.sheafAxioms
  harmonicFunctionDefinedClosed : H.harmonicFunctionDefined
  sheafCohomologyClosed : H.sheafCohomology

def HarmonicSheafClosed (H : HarmonicSheafPackage) : Prop :=
  H.harmonicCondition ∧ H.sheafAxioms ∧ H.harmonicFunctionDefined ∧ H.sheafCohomology

theorem harmonic_sheaf_closed_from_evidence
    (H : HarmonicSheafPackage) (E : HarmonicSheafEvidence H) :
    HarmonicSheafClosed H := by
  exact And.intro E.harmonicConditionClosed
    (And.intro E.sheafAxiomsClosed
      (And.intro E.harmonicFunctionDefinedClosed E.sheafCohomologyClosed))

end AxiomaticPotentialTheoryCanonicalLaneLean
end HautevilleHouse