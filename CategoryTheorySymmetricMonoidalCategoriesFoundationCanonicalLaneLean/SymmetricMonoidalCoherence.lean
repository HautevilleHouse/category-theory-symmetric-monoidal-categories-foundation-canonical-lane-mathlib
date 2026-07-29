import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean.SymmetricMonoidalObject

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean

structure CoherenceConditionsPackage (C : CategoryOb) (M : MonoidalCategoryOb C) (B : SymmetricBraiding C M) where
  pentagonHolds : Prop
  triangleHolds : Prop
  hexagon1Holds : Prop
  hexagon2Holds : Prop
  involutionHolds : Prop

structure CoherenceConditionsEvidence {C : CategoryOb} {M : MonoidalCategoryOb C} {B : SymmetricBraiding C M}
    (P : CoherenceConditionsPackage C M B) where
  pentagonClosed : P.pentagonHolds
  triangleClosed : P.triangleHolds
  hexagon1Closed : P.hexagon1Holds
  hexagon2Closed : P.hexagon2Holds
  involutionClosed : P.involutionHolds

def CoherenceConditionsClosed {C : CategoryOb} {M : MonoidalCategoryOb C} {B : SymmetricBraiding C M}
    (P : CoherenceConditionsPackage C M B) : Prop :=
  P.pentagonHolds ∧ P.triangleHolds ∧ P.hexagon1Holds ∧ P.hexagon2Holds ∧ P.involutionHolds

theorem coherence_conditions_closed_from_evidence
    {C : CategoryOb} {M : MonoidalCategoryOb C} {B : SymmetricBraiding C M}
    (P : CoherenceConditionsPackage C M B) (E : CoherenceConditionsEvidence P) :
    CoherenceConditionsClosed P := by
  exact And.intro E.pentagonClosed
    (And.intro E.triangleClosed
      (And.intro E.hexagon1Closed
        (And.intro E.hexagon2Closed E.involutionClosed)))

end CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean
end HautevilleHouse