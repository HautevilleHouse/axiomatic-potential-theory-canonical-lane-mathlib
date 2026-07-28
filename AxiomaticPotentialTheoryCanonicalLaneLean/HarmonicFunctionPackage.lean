import AxiomaticPotentialTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticPotentialTheoryCanonicalLaneLean

structure HarmonicFunctionPackage where
  domain : Type u
  topology : TopologicalSpace domain
  harmonicFunctions : Set (domain → ℝ)
  meanValueProperty : Prop
  maximumPrinciple : Prop
  harnackInequality : Prop

structure HarmonicFunctionEvidence (H : HarmonicFunctionPackage) where
  meanValuePropertyClosed : H.meanValueProperty
  maximumPrincipleClosed : H.maximumPrinciple
  harnackInequalityClosed : H.harnackInequality

def HarmonicFunctionPackageClosed (H : HarmonicFunctionPackage) : Prop :=
  H.meanValueProperty ∧ H.maximumPrinciple ∧ H.harnackInequality

theorem harmonic_function_package_closed_from_evidence
    (H : HarmonicFunctionPackage) (E : HarmonicFunctionEvidence H) :
    HarmonicFunctionPackageClosed H := by
  exact And.intro E.meanValuePropertyClosed
    (And.intro E.maximumPrincipleClosed E.harnackInequalityClosed)

end AxiomaticPotentialTheoryCanonicalLaneLean
end HautevilleHouse
