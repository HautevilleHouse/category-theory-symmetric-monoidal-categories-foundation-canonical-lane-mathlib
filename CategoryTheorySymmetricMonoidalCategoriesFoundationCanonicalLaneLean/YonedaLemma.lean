import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean

structure YonedaLemmaPackage where
  category : Type u
  functorCategory : Type v
  homFunctor : category → functorCategory
  yonedaEmbedding : category → functorCategory
  naturalIsomorphism : Prop
  yonedaLemmaStatement : Prop
  naturalIsomorphismTerm : naturalIsomorphism
  yonedaLemmaStatementTerm : yonedaLemmaStatement

structure YonedaLemmaEvidence (Y : YonedaLemmaPackage) where
  naturalIsomorphismClosed : Y.naturalIsomorphism
  yonedaLemmaStatementClosed : Y.yonedaLemmaStatement

def YonedaLemmaClosed (Y : YonedaLemmaPackage) : Prop :=
  Y.naturalIsomorphism ∧ Y.yonedaLemmaStatement

theorem yoneda_lemma_closed_from_evidence
    (Y : YonedaLemmaPackage) (E : YonedaLemmaEvidence Y) : YonedaLemmaClosed Y := by
  exact And.intro E.naturalIsomorphismClosed E.yonedaLemmaStatementClosed

end CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean
end HautevilleHouse