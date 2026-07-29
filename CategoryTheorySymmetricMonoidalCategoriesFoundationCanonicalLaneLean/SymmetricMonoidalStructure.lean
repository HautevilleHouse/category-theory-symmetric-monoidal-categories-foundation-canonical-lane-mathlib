import HautevilleHouse.CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean.MathlibObjects

/-!
# Symmetric Monoidal Structure Package
-/

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean

structure SymmetricMonoidalStructurePackage (O : SymmetricMonoidalAdmittedObject) where
  braidingNatural : Prop
  symmetry : Prop
  hexagonCondition : Prop
  coherenceBraiding : Prop

structure SymmetricMonoidalStructureEvidence {O : SymmetricMonoidalAdmittedObject} (P : SymmetricMonoidalStructurePackage O) where
  braidingNaturalClosed : P.braidingNatural
  symmetryClosed : P.symmetry
  hexagonConditionClosed : P.hexagonCondition
  coherenceBraidingClosed : P.coherenceBraiding

def SymmetricMonoidalStructureClosed {O : SymmetricMonoidalAdmittedObject} (P : SymmetricMonoidalStructurePackage O) : Prop :=
  P.braidingNatural ∧ P.symmetry ∧ P.hexagonCondition ∧ P.coherenceBraiding

theorem symmetric_monoidal_structure_closed_from_evidence
    {O : SymmetricMonoidalAdmittedObject} (P : SymmetricMonoidalStructurePackage O)
    (E : SymmetricMonoidalStructureEvidence P) : SymmetricMonoidalStructureClosed P := by
  exact And.intro E.braidingNaturalClosed
    (And.intro E.symmetryClosed
      (And.intro E.hexagonConditionClosed E.coherenceBraidingClosed))

end CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean
end HautevilleHouse
