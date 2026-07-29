import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean.CategoryObject

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean

structure AdjointPair (C D : SymmetricMonoidalCategory) where
  left : C.Obj → D.Obj
  right : D.Obj → C.Obj
  unit : ∀ (X : C.Obj), C.Hom X (right (left X))
  counit : ∀ (Y : D.Obj), D.Hom (left (right Y)) Y
  triangleLeft : Prop
  triangleRight : Prop
  triangleLeftClosed : triangleLeft
  triangleRightClosed : triangleRight

structure AdjunctionEvidence (C D : SymmetricMonoidalCategory) (F : AdjointPair C D) where
  triangleLeftClosed : F.triangleLeft
  triangleRightClosed : F.triangleRight

def AdjunctionClosed (C D : SymmetricMonoidalCategory) (F : AdjointPair C D) : Prop :=
  F.triangleLeft ∧ F.triangleRight

theorem adjunction_closed_from_evidence (C D : SymmetricMonoidalCategory)
    (F : AdjointPair C D) (E : AdjunctionEvidence C D F) : AdjunctionClosed C D F := by
  exact And.intro E.triangleLeftClosed E.triangleRightClosed

end CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean
end HautevilleHouse