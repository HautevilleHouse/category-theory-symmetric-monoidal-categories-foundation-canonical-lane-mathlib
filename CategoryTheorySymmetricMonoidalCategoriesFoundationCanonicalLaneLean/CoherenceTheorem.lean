import HautevilleHouse.CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean.SymmetricMonoidalFoundation

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean

structure CoherencePackage {P : SymmetricMonoidalPackage} where
  macLaneCoherenceProof : Prop
  monoidalEquivalenceToStrict : Prop
  braidingCoherence : Prop

structure CoherenceEvidence {P : SymmetricMonoidalPackage} (C : CoherencePackage P) where
  macLaneCoherenceProofClosed : C.macLaneCoherenceProof
  monoidalEquivalenceToStrictClosed : C.monoidalEquivalenceToStrict
  braidingCoherenceClosed : C.braidingCoherence

def CoherenceClosed {P : SymmetricMonoidalPackage} (C : CoherencePackage P) : Prop :=
  C.macLaneCoherenceProof ∧ C.monoidalEquivalenceToStrict ∧ C.braidingCoherence

theorem coherence_closed_from_evidence {P : SymmetricMonoidalPackage} (C : CoherencePackage P) (E : CoherenceEvidence C) : CoherenceClosed C := by
  exact And.intro E.macLaneCoherenceProofClosed (And.intro E.monoidalEquivalenceToStrictClosed E.braidingCoherenceClosed)

end CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean
end HautevilleHouse