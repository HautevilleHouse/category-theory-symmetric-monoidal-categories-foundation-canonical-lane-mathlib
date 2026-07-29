import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean.SymmetricMonoidalCategory

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean

structure CoherencePackage {M : MonoidalCategory} (S : SymmetricMonoidalCategory M) where
  macLaneCoherence : Prop
  strictificationExists : Prop
  coherenceTheoremProved : Prop

structure CoherenceEvidence {M : MonoidalCategory} {S : SymmetricMonoidalCategory M} (C : CoherencePackage S) where
  macLaneCoherenceClosed : C.macLaneCoherence
  strictificationExistsClosed : C.strictificationExists
  coherenceTheoremProvedClosed : C.coherenceTheoremProved

def CoherenceClosed {M : MonoidalCategory} {S : SymmetricMonoidalCategory M} (C : CoherencePackage S) : Prop :=
  C.macLaneCoherence ∧ C.strictificationExists ∧ C.coherenceTheoremProved

theorem coherence_closed_from_evidence {M : MonoidalCategory} {S : SymmetricMonoidalCategory M} (C : CoherencePackage S) (E : CoherenceEvidence C) : CoherenceClosed C := by
  exact And.intro E.macLaneCoherenceClosed (And.intro E.strictificationExistsClosed E.coherenceTheoremProvedClosed)

end CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean
end HautevilleHouse