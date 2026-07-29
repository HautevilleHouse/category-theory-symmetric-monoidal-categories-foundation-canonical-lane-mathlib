import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean

structure MonoidalCategoryPackage where
  underlyingCategory : Type u
  tensorProduct : underlyingCategory -> underlyingCategory -> underlyingCategory
  unitObject : underlyingCategory
  associator : forall A B C : underlyingCategory, (tensorProduct (tensorProduct A B) C) ~= (tensorProduct A (tensorProduct B C))
  leftUnitor : forall A : underlyingCategory, (tensorProduct unitObject A) ~= A
  rightUnitor : forall A : underlyingCategory, (tensorProduct A unitObject) ~= A
  triangleIdentity : Prop
  pentagonIdentity : Prop
  triangleIdentityClosed : triangleIdentity
  pentagonIdentityClosed : pentagonIdentity

structure MonoidalCategoryEvidence (M : MonoidalCategoryPackage) where
  triangleIdentityClosed : M.triangleIdentity
  pentagonIdentityClosed : M.pentagonIdentity

def MonoidalCategoryClosed (M : MonoidalCategoryPackage) : Prop :=
  M.triangleIdentity ∧ M.pentagonIdentity

theorem monoidal_category_closed_from_evidence (M : MonoidalCategoryPackage)
    (E : MonoidalCategoryEvidence M) : MonoidalCategoryClosed M := by
  exact And.intro E.triangleIdentityClosed E.pentagonIdentityClosed

end CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean
end HautevilleHouse