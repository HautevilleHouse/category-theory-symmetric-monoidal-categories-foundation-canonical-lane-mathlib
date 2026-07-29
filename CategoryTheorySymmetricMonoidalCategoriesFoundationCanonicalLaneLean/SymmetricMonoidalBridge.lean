import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean.SymmetricMonoidalObject

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  symMonObj (A.object : SymmetricMonoidalCategoryOb)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  -- Use the fact that A.object is a symmetric monoidal category
  exact A.object.conclusion

end CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean
end HautevilleHouse