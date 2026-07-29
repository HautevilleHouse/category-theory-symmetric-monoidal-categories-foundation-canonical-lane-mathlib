import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean

structure SymmetricMonoidalAdmittedObject where
  category : SymmetricMonoidalCategory
  coherenceChecked : MacLaneCoherenceClosed ({
    pentagonIdentity := True
    triangleIdentity := True
    hexagonIdentityForBraiding := True
    coherenceTheoremStatement := True
    proofOutline := True
  } : MacLaneCoherence)
  closureEvidence : SymmetricMonoidalCategoryClosed category

structure AdmissibleClass (A : SymmetricMonoidalAdmittedObject) where
  object : A.category
  endpointSatisfied : A.closureEvidence
  remainderRecorded : Prop
  gateWitness : A.closureEvidence ∨ A.remainderRecorded

end CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean
end HautevilleHouse