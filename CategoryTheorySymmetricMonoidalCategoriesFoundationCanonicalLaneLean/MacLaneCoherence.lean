import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean

structure MacLaneCoherence where
  pentagonIdentity : Prop
  triangleIdentity : Prop
  hexagonIdentityForBraiding : Prop
  coherenceTheoremStatement : Prop
  proofOutline : Prop

structure MacLaneCoherenceEvidence (M : MacLaneCoherence) where
  pentagonIdentityClosed : M.pentagonIdentity
  triangleIdentityClosed : M.triangleIdentity
  hexagonIdentityForBraidingClosed : M.hexagonIdentityForBraiding
  coherenceTheoremStatementClosed : M.coherenceTheoremStatement
  proofOutlineClosed : M.proofOutline

def MacLaneCoherenceClosed (M : MacLaneCoherence) : Prop :=
  M.pentagonIdentity ∧ M.triangleIdentity ∧ M.hexagonIdentityForBraiding ∧
  M.coherenceTheoremStatement ∧ M.proofOutline

theorem mac_lane_coherence_closed_from_evidence
    (M : MacLaneCoherence) (E : MacLaneCoherenceEvidence M) : MacLaneCoherenceClosed M := by
  exact And.intro E.pentagonIdentityClosed
    (And.intro E.triangleIdentityClosed
      (And.intro E.hexagonIdentityForBraidingClosed
        (And.intro E.coherenceTheoremStatementClosed E.proofOutlineClosed)))

end CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean
end HautevilleHouse