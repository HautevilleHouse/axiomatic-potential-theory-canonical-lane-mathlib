import AxiomaticPotentialTheoryCanonicalLaneLean.PotentialEnergy

namespace HautevilleHouse
namespace AxiomaticPotentialTheoryCanonicalLaneLean

structure ConvergenceTheoremPackage {H : HarmonicSheafPackage}
    {E : PotentialEnergyPackage H} where
  approximatingSequence : Type u
  limitFunction : Type v
  cauchyCondition : Prop
  limitHarmonic : Prop
  convergenceRateBound : Prop

structure ConvergenceTheoremEvidence {H : HarmonicSheafPackage}
    {E : PotentialEnergyPackage H} (C : ConvergenceTheoremPackage E) where
  cauchyConditionClosed : C.cauchyCondition
  limitHarmonicClosed : C.limitHarmonic
  convergenceRateBoundClosed : C.convergenceRateBound

def ConvergenceTheoremClosed {H : HarmonicSheafPackage}
    {E : PotentialEnergyPackage H} (C : ConvergenceTheoremPackage E) : Prop :=
  C.cauchyCondition ∧ C.limitHarmonic ∧ C.convergenceRateBound

theorem convergence_theorem_closed_from_evidence
    {H : HarmonicSheafPackage} {E : PotentialEnergyPackage H}
    (C : ConvergenceTheoremPackage E) (Ev : ConvergenceTheoremEvidence C) :
    ConvergenceTheoremClosed C := by
  exact And.intro Ev.cauchyConditionClosed
    (And.intro Ev.limitHarmonicClosed Ev.convergenceRateBoundClosed)

end AxiomaticPotentialTheoryCanonicalLaneLean
end HautevilleHouse