import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean.MonoidalCategory

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean

structure SymmetricMonoidalPackage (M : MonoidalCategoryPackage) where
  braiding : forall A B : M.underlyingCategory, (M.tensorProduct A B) ~= (M.tensorProduct B A)
  hexagonIdentity : Prop
  symmetryInvolutive : Prop
  hexagonIdentityClosed : hexagonIdentity
  symmetryInvolutiveClosed : symmetryInvolutive

structure SymmetricMonoidalEvidence {M : MonoidalCategoryPackage} (S : SymmetricMonoidalPackage M) where
  hexagonIdentityClosed : S.hexagonIdentity
  symmetryInvolutiveClosed : S.symmetryInvolutive

def SymmetricMonoidalClosed {M : MonoidalCategoryPackage} (S : SymmetricMonoidalPackage M) : Prop :=
  S.hexagonIdentity ∧ S.symmetryInvolutive

theorem symmetric_monoidal_closed_from_evidence {M : MonoidalCategoryPackage}
    (S : SymmetricMonoidalPackage M) (E : SymmetricMonoidalEvidence S) : SymmetricMonoidalClosed S := by
  exact And.intro E.hexagonIdentityClosed E.symmetryInvolutiveClosed

end CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean
end HautevilleHouse