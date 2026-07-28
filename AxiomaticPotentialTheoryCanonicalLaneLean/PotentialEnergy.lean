import AxiomaticPotentialTheoryCanonicalLaneLean.HarmonicSheaf

namespace HautevilleHouse
namespace AxiomaticPotentialTheoryCanonicalLaneLean

structure PotentialEnergyPackage {H : HarmonicSheafPackage} where
  energyFunctional : Type u
  dirichletEnergy : Prop
  minimizerExistence : Prop
  monotonicityProp : Prop

structure PotentialEnergyEvidence {H : HarmonicSheafPackage}
    (E : PotentialEnergyPackage H) where
  dirichletEnergyClosed : E.dirichletEnergy
  minimizerExistenceClosed : E.minimizerExistence
  monotonicityPropClosed : E.monotonicityProp

def PotentialEnergyClosed {H : HarmonicSheafPackage}
    (E : PotentialEnergyPackage H) : Prop :=
  E.dirichletEnergy ∧ E.minimizerExistence ∧ E.monotonicityProp

theorem potential_energy_closed_from_evidence
    {H : HarmonicSheafPackage} (E : PotentialEnergyPackage H)
    (Ev : PotentialEnergyEvidence E) : PotentialEnergyClosed E := by
  exact And.intro Ev.dirichletEnergyClosed
    (And.intro Ev.minimizerExistenceClosed Ev.monotonicityPropClosed)

end AxiomaticPotentialTheoryCanonicalLaneLean
end HautevilleHouse