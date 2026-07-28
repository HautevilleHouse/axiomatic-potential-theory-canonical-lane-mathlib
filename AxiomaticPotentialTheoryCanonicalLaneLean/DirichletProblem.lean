import AxiomaticPotentialTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticPotentialTheoryCanonicalLaneLean

structure DirichletProblemPackage where
  boundaryData : Type u
  solution : boundaryData → ℝ
  existence : Prop
  uniqueness : Prop
  continuousDependence : Prop

structure DirichletProblemEvidence (D : DirichletProblemPackage) where
  existenceClosed : D.existence
  uniquenessClosed : D.uniqueness
  continuousDependenceClosed : D.continuousDependence

def DirichletProblemPackageClosed (D : DirichletProblemPackage) : Prop :=
  D.existence ∧ D.uniqueness ∧ D.continuousDependence

theorem dirichlet_problem_package_closed_from_evidence
    (D : DirichletProblemPackage) (E : DirichletProblemEvidence D) :
    DirichletProblemPackageClosed D := by
  exact And.intro E.existenceClosed
    (And.intro E.uniquenessClosed E.continuousDependenceClosed)

end AxiomaticPotentialTheoryCanonicalLaneLean
end HautevilleHouse
