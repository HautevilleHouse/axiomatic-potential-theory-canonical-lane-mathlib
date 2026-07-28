import AxiomaticPotentialTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticPotentialTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  PotentialWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end AxiomaticPotentialTheoryCanonicalLaneLean
end HautevilleHouse
