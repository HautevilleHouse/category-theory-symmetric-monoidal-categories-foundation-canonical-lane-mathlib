import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean.CategoryObject

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean

structure YonedaEmbedding (C : SymmetricMonoidalCategory) where
  presheafCategory : SymmetricMonoidalCategory
  embedding : ∀ (X : C.Obj), presheafCategory.Obj
  fullyFaithful : Prop
  dense : Prop
  fullyFaithfulClosed : fullyFaithful
  denseClosed : dense

structure YonedaEmbeddingEvidence (C : SymmetricMonoidalCategory) (Y : YonedaEmbedding C) where
  fullyFaithfulClosed : Y.fullyFaithful
  denseClosed : Y.dense

def YonedaEmbeddingClosed (C : SymmetricMonoidalCategory) (Y : YonedaEmbedding C) : Prop :=
  Y.fullyFaithful ∧ Y.dense

theorem yoneda_embedding_closed_from_evidence (C : SymmetricMonoidalCategory)
    (Y : YonedaEmbedding C) (E : YonedaEmbeddingEvidence C Y) : YonedaEmbeddingClosed C Y := by
  exact And.intro E.fullyFaithfulClosed E.denseClosed

end CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean
end HautevilleHouse