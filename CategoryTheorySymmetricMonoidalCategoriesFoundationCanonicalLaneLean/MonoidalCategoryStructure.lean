import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean

structure MonoidalCategoryPackage where
  tensorProduct : Type u → Type u → Type u
  unitObject : Type u
  associator : (X Y Z : Type u) → (tensorProduct (tensorProduct X Y) Z) ≅ (tensorProduct X (tensorProduct Y Z))
  leftUnitor : (X : Type u) → (tensorProduct unitObject X) ≅ X
  rightUnitor : (X : Type u) → (tensorProduct X unitObject) ≅ X
  pentagonIdentities : Prop
  triangleIdentities : Prop

structure MonoidalCategoryEvidence (P : MonoidalCategoryPackage) where
  pentagonIdentitiesClosed : P.pentagonIdentities
  triangleIdentitiesClosed : P.triangleIdentities

def MonoidalCategoryClosed (P : MonoidalCategoryPackage) : Prop :=
  P.pentagonIdentities ∧ P.triangleIdentities

theorem monoidal_category_closed_from_evidence
    (P : MonoidalCategoryPackage) (E : MonoidalCategoryEvidence P) :
    MonoidalCategoryClosed P := by
  exact And.intro E.pentagonIdentitiesClosed E.triangleIdentitiesClosed

end CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean
end HautevilleHouse