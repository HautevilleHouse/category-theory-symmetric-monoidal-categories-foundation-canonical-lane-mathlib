import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean

structure SymmetricMonoidalCategory where
  obj : Type u
  hom : obj → obj → Type v
  id : (X : obj) → hom X X
  comp : {X Y Z : obj} → hom X Y → hom Y Z → hom X Z
  tensor : obj → obj → obj
  tensorHom : {X Y U V : obj} → hom X Y → hom U V → hom (tensor X U) (tensor Y V)
  associator : (X Y Z : obj) → hom (tensor (tensor X Y) Z) (tensor X (tensor Y Z))
  leftUnitor : (X : obj) → hom (tensor unit X) X
  rightUnitor : (X : obj) → hom (tensor X unit) X
  symmetry : (X Y : obj) → hom (tensor X Y) (tensor Y X)
  unit : obj
  categoryAxioms : Prop
  monoidalAxioms : Prop
  symmetricAxioms : Prop

structure SymmetricMonoidalCategoryEvidence (C : SymmetricMonoidalCategory) where
  categoryAxiomsClosed : C.categoryAxioms
  monoidalAxiomsClosed : C.monoidalAxioms
  symmetricAxiomsClosed : C.symmetricAxioms

def SymmetricMonoidalCategoryClosed (C : SymmetricMonoidalCategory) : Prop :=
  C.categoryAxioms ∧ C.monoidalAxioms ∧ C.symmetricAxioms

theorem symmetric_monoidal_category_closed_from_evidence
    (C : SymmetricMonoidalCategory) (E : SymmetricMonoidalCategoryEvidence C) :
    SymmetricMonoidalCategoryClosed C := by
  exact And.intro E.categoryAxiomsClosed (And.intro E.monoidalAxiomsClosed E.symmetricAxiomsClosed)

end CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean
end HautevilleHouse