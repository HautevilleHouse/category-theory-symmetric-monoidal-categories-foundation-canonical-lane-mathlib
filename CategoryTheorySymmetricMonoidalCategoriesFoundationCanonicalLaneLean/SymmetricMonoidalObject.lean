import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean

structure CategoryOb where
  Obj : Type u
  Hom : Obj → Obj → Type v
  id : (X : Obj) → Hom X X
  comp : {X Y Z : Obj} → Hom Y Z → Hom X Y → Hom X Z
  id_comp : ∀ {X Y : Obj} (f : Hom X Y), comp (id Y) f = f
  comp_id : ∀ {X Y : Obj} (f : Hom X Y), comp f (id X) = f
  assoc : ∀ {W X Y Z : Obj} (f : Hom W X) (g : Hom X Y) (h : Hom Y Z), comp (comp h g) f = comp h (comp g f)

structure MonoidalCategoryOb (C : CategoryOb) where
  tensor : C.Obj → C.Obj → C.Obj
  unit : C.Obj
  associator : (X Y Z : C.Obj) → C.Hom (tensor (tensor X Y) Z) (tensor X (tensor Y Z))
  leftUnitor : (X : C.Obj) → C.Hom (tensor unit X) X
  rightUnitor : (X : C.Obj) → C.Hom (tensor X unit) X
  pentagon : ∀ (W X Y Z : C.Obj), ... := sorry
  triangle : ∀ (X Y : C.Obj), ... := sorry

structure SymmetricBraiding (C : CategoryOb) (M : MonoidalCategoryOb C) where
  braiding : (X Y : C.Obj) → C.Hom (M.tensor X Y) (M.tensor Y X)
  hexagon1 : ∀ (X Y Z : C.Obj), ... := sorry
  hexagon2 : ∀ (X Y Z : C.Obj), ... := sorry
  involution : ∀ (X Y : C.Obj), ... := sorry

structure SymmetricMonoidalCategoryOb where
  cat : CategoryOb
  monoidal : MonoidalCategoryOb cat
  braiding : SymmetricBraiding cat monoidal

def symMonObj (S : SymmetricMonoidalCategoryOb) : Prop := True

end CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean
end HautevilleHouse