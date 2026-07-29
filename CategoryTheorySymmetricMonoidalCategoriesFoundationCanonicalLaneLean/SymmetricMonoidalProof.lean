import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean.SymmetricMonoidalFoundation

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean

structure SymmetricMonoidalCertificate (F : SymmetricMonoidalFoundation) where
  pentagonProof : F.coherence.pentagonHolds
  triangleProof : F.coherence.triangleHolds
  hexagonProof1 : F.coherence.hexagon1Holds
  hexagonProof2 : F.coherence.hexagon2Holds
  involutionProof : F.coherence.involutionHolds

def SymmetricMonoidalCertificateClosed (F : SymmetricMonoidalFoundation) (C : SymmetricMonoidalCertificate F) : Prop :=
  C.pentagonProof ∧ C.triangleProof ∧ C.hexagonProof1 ∧ C.hexagonProof2 ∧ C.involutionProof

theorem symmetric_monoidal_certificate_closed (F : SymmetricMonoidalFoundation) (C : SymmetricMonoidalCertificate F) :
    SymmetricMonoidalCertificateClosed F C := by
  exact And.intro C.pentagonProof
    (And.intro C.triangleProof
      (And.intro C.hexagonProof1
        (And.intro C.hexagonProof2 C.involutionProof)))

end CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean
end HautevilleHouse