import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean

structure UnitorConstraintsPackage where
  leftUnitorEquation : (X Y : Type u) → (leftUnitor (tensorProduct X Y)) = (tensorProduct (leftUnitor X) Y) ∘ associator unitObject X Y
  rightUnitorEquation : (X Y : Type u) → (rightUnitor (tensorProduct X Y)) = (tensorProduct X (rightUnitor Y)) ∘ associator X Y unitObject
  coherenceCondition : Prop

def UnitorConstraintsClosed (P : UnitorConstraintsPackage) : Prop :=
  (∀ X Y : Type u, P.leftUnitorEquation X Y) ∧ (∀ X Y : Type u, P.rightUnitorEquation X Y) ∧ P.coherenceCondition

end CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean
end HautevilleHouse