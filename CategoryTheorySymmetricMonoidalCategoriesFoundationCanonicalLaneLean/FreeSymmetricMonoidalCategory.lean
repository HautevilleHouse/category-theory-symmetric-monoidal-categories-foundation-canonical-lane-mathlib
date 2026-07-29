import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean

structure FreeSymmetricMonoidalCategory where
  generatingObjects : Type u
  generatingMorphisms : Type v
  formalTensor : generatingObjects → generatingObjects → generatingObjects
  formalSymmetry : (X Y : generatingObjects) → generatingMorphisms
  universalProperty : Prop
  coherenceTheorems : Prop
  freeExtension : Prop

structure FreeSymmetricMonoidalCategoryEvidence (F : FreeSymmetricMonoidalCategory) where
  universalPropertyClosed : F.universalProperty
  coherenceTheoremsClosed : F.coherenceTheorems
  freeExtensionClosed : F.freeExtension

def FreeSymmetricMonoidalCategoryClosed (F : FreeSymmetricMonoidalCategory) : Prop :=
  F.universalProperty ∧ F.coherenceTheorems ∧ F.freeExtension

theorem free_symmetric_monoidal_category_closed_from_evidence
    (F : FreeSymmetricMonoidalCategory) (E : FreeSymmetricMonoidalCategoryEvidence F) :
    FreeSymmetricMonoidalCategoryClosed F := by
  exact And.intro E.universalPropertyClosed (And.intro E.coherenceTheoremsClosed E.freeExtensionClosed)

end CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean
end HautevilleHouse