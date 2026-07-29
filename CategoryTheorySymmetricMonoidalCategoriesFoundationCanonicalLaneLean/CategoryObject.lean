import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean

structure SymmetricMonoidalCategory where
  Obj : Type u
  Hom : Obj → Obj → Type v
  id : ∀ (X : Obj), Hom X X
  comp : ∀ {X Y Z : Obj}, Hom X Y → Hom Y Z → Hom X Z
  tensor : Obj → Obj → Obj
  tensorHom : ∀ {A B C D : Obj}, Hom A B → Hom C D → Hom (tensor A C) (tensor B D)
  associator : ∀ (A B C : Obj), Hom (tensor (tensor A B) C) (tensor A (tensor B C))
  leftUnitor : ∀ (A : Obj), Hom (tensor I A) A
  rightUnitor : ∀ (A : Obj), Hom (tensor A I) A
  braiding : ∀ (A B : Obj), Hom (tensor A B) (tensor B A)
  I : Obj
  categoryAxioms : Prop
  tensorAxioms : Prop
  associatorNatural : Prop
  leftUnitorNatural : Prop
  rightUnitorNatural : Prop
  pentagonAxiom : Prop
  triangleAxiom : Prop
  braidingNatural : Prop
  hexagonAxiom : Prop

structure SymmetricMonoidalEvidence (C : SymmetricMonoidalCategory) where
  categoryAxiomsClosed : C.categoryAxioms
  tensorAxiomsClosed : C.tensorAxioms
  associatorNaturalClosed : C.associatorNatural
  leftUnitorNaturalClosed : C.leftUnitorNatural
  rightUnitorNaturalClosed : C.rightUnitorNatural
  pentagonAxiomClosed : C.pentagonAxiom
  triangleAxiomClosed : C.triangleAxiom
  braidingNaturalClosed : C.braidingNatural
  hexagonAxiomClosed : C.hexagonAxiom

def SymmetricMonoidalClosed (C : SymmetricMonoidalCategory) : Prop :=
  C.categoryAxioms ∧ C.tensorAxioms ∧ C.associatorNatural ∧
  C.leftUnitorNatural ∧ C.rightUnitorNatural ∧ C.pentagonAxiom ∧
  C.triangleAxiom ∧ C.braidingNatural ∧ C.hexagonAxiom

theorem symmetric_monoidal_closed_from_evidence (C : SymmetricMonoidalCategory)
    (E : SymmetricMonoidalEvidence C) : SymmetricMonoidalClosed C := by
  exact And.intro E.categoryAxiomsClosed
    (And.intro E.tensorAxiomsClosed
      (And.intro E.associatorNaturalClosed
        (And.intro E.leftUnitorNaturalClosed
          (And.intro E.rightUnitorNaturalClosed
            (And.intro E.pentagonAxiomClosed
              (And.intro E.triangleAxiomClosed
                (And.intro E.braidingNaturalClosed E.hexagonAxiomClosed)))))))

end CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean
end HautevilleHouse