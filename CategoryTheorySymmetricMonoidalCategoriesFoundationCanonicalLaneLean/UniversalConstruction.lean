import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean.CategoryObject
import HautevilleHouse.CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean.AdjointFunctor

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean

structure UniversalConstruction (C D : SymmetricMonoidalCategory) where
  functor : AdjointPair C D
  universalProperty : Prop
  universalPropertyClosed : universalProperty

structure UniversalConstructionEvidence (C D : SymmetricMonoidalCategory)
    (U : UniversalConstruction C D) where
  universalPropertyClosed : U.universalProperty

def UniversalConstructionClosed (C D : SymmetricMonoidalCategory)
    (U : UniversalConstruction C D) : Prop := U.universalProperty

theorem universal_construction_closed_from_evidence (C D : SymmetricMonoidalCategory)
    (U : UniversalConstruction C D) (E : UniversalConstructionEvidence C D U) :
    UniversalConstructionClosed C D U := by
  exact E.universalPropertyClosed

end CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean
end HautevilleHouse