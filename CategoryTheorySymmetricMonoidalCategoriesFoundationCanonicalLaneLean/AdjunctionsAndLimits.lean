import HautevilleHouse.CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean.YonedaEmbedding

/-!
# Adjunctions and Limits Package
-/

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean

structure AdjunctionsAndLimitsPackage {O : SymmetricMonoidalAdmittedObject}
    {S : SymmetricMonoidalStructurePackage O} {Y : YonedaEmbeddingPackage S} where
  adjointFunctorTheorem : Prop
  limitsExist : Prop
  colimitsExist : Prop
  limitClosure : Prop

structure AdjunctionsAndLimitsEvidence {O : SymmetricMonoidalAdmittedObject}
    {S : SymmetricMonoidalStructurePackage O} {Y : YonedaEmbeddingPackage S}
    (A : AdjunctionsAndLimitsPackage Y) where
  adjointFunctorTheoremClosed : A.adjointFunctorTheorem
  limitsExistClosed : A.limitsExist
  colimitsExistClosed : A.colimitsExist
  limitClosureClosed : A.limitClosure

def AdjunctionsAndLimitsClosed {O : SymmetricMonoidalAdmittedObject}
    {S : SymmetricMonoidalStructurePackage O} {Y : YonedaEmbeddingPackage S}
    (A : AdjunctionsAndLimitsPackage Y) : Prop :=
  A.adjointFunctorTheorem ∧ A.limitsExist ∧ A.colimitsExist ∧ A.limitClosure

theorem adjunctions_and_limits_closed_from_evidence
    {O : SymmetricMonoidalAdmittedObject} {S : SymmetricMonoidalStructurePackage O}
    {Y : YonedaEmbeddingPackage S} (A : AdjunctionsAndLimitsPackage Y)
    (E : AdjunctionsAndLimitsEvidence A) : AdjunctionsAndLimitsClosed A := by
  exact And.intro E.adjointFunctorTheoremClosed
    (And.intro E.limitsExistClosed
      (And.intro E.colimitsExistClosed E.limitClosureClosed))

end CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean
end HautevilleHouse
