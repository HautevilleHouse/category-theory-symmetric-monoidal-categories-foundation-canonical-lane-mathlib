import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean.CategoryObject

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean

structure Limit (C : SymmetricMonoidalCategory) (J : Type u) (D : J → C.Obj) where
  cone : C.Obj
  projections : ∀ (j : J), C.Hom cone (D j)
  universalProperty : Prop
  universalPropertyClosed : universalProperty

structure Colimit (C : SymmetricMonoidalCategory) (J : Type u) (D : J → C.Obj) where
  cocone : C.Obj
  injections : ∀ (j : J), C.Hom (D j) cocone
  universalProperty : Prop
  universalPropertyClosed : universalProperty

structure LimitEvidence (C : SymmetricMonoidalCategory) (J : Type u) (D : J → C.Obj)
    (L : Limit C J D) where
  universalPropertyClosed : L.universalProperty

structure ColimitEvidence (C : SymmetricMonoidalCategory) (J : Type u) (D : J → C.Obj)
    (Co : Colimit C J D) where
  universalPropertyClosed : Co.universalProperty

def LimitClosed (C : SymmetricMonoidalCategory) (J : Type u) (D : J → C.Obj)
    (L : Limit C J D) : Prop := L.universalProperty

def ColimitClosed (C : SymmetricMonoidalCategory) (J : Type u) (D : J → C.Obj)
    (Co : Colimit C J D) : Prop := Co.universalProperty

theorem limit_closed_from_evidence (C : SymmetricMonoidalCategory) (J : Type u)
    (D : J → C.Obj) (L : Limit C J D) (E : LimitEvidence C J D L) : LimitClosed C J D L := by
  exact E.universalPropertyClosed

theorem colimit_closed_from_evidence (C : SymmetricMonoidalCategory) (J : Type u)
    (D : J → C.Obj) (Co : Colimit C J D) (E : ColimitEvidence C J D Co) : ColimitClosed C J D Co := by
  exact E.universalPropertyClosed

end CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean
end HautevilleHouse