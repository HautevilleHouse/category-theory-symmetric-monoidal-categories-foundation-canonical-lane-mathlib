import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean

structure SymmetricBraidingPackage where
  braiding : (X Y : Type u) → (tensorProduct X Y) ≅ (tensorProduct Y X)
  naturalityX : Prop
  naturalityY : Prop
  symmetryCondition : (X Y : Type u) → braiding Y X ∘ braiding X Y = Identity
  hexagonIdentities : Prop

def SymmetricBraidingClosed (P : SymmetricBraidingPackage) : Prop :=
  P.naturalityX ∧ P.naturalityY ∧ (∀ X Y : Type u, P.symmetryCondition X Y) ∧ P.hexagonIdentities

end CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean
end HautevilleHouse