import HautevilleHouse.CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean

structure SymmetricMonoidalPackage where
  braidingNaturality : Prop
  hexagonCondition : Prop
  symmetryInvolutive : Prop
  monoidalCategoryStructure : Prop

structure SymmetricMonoidalEvidence (P : SymmetricMonoidalPackage) where
  braidingNaturalityClosed : P.braidingNaturality
  hexagonConditionClosed : P.hexagonCondition
  symmetryInvolutiveClosed : P.symmetryInvolutive
  monoidalCategoryStructureClosed : P.monoidalCategoryStructure

def SymmetricMonoidalClosed (P : SymmetricMonoidalPackage) : Prop :=
  P.braidingNaturality ∧ P.hexagonCondition ∧ P.symmetryInvolutive ∧ P.monoidalCategoryStructure

theorem symmetric_monoidal_closed_from_evidence (P : SymmetricMonoidalPackage) (E : SymmetricMonoidalEvidence P) : SymmetricMonoidalClosed P := by
  exact And.intro E.braidingNaturalityClosed (And.intro E.hexagonConditionClosed (And.intro E.symmetryInvolutiveClosed E.monoidalCategoryStructureClosed))

end CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean
end HautevilleHouse