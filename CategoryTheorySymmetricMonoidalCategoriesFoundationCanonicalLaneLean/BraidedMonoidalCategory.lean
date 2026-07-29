import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean

structure BraidedMonoidalCategory where
  obj : Type u
  hom : obj → obj → Type v
  tensor : obj → obj → obj
  braiding : (X Y : obj) → hom (tensor X Y) (tensor Y X)
  hexagonAxioms : Prop
  naturality : Prop
  unitBraiding : Prop

structure BraidedMonoidalCategoryEvidence (B : BraidedMonoidalCategory) where
  hexagonAxiomsClosed : B.hexagonAxioms
  naturalityClosed : B.naturality
  unitBraidingClosed : B.unitBraiding

def BraidedMonoidalCategoryClosed (B : BraidedMonoidalCategory) : Prop :=
  B.hexagonAxioms ∧ B.naturality ∧ B.unitBraiding

theorem braided_monoidal_category_closed_from_evidence
    (B : BraidedMonoidalCategory) (E : BraidedMonoidalCategoryEvidence B) :
    BraidedMonoidalCategoryClosed B := by
  exact And.intro E.hexagonAxiomsClosed (And.intro E.naturalityClosed E.unitBraidingClosed)

end CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean
end HautevilleHouse