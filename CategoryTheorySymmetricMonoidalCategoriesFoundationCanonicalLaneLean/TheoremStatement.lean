import HautevilleHouse.CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean

structure SymmetricMonoidalTheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  symmetricMonoidalClosureStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceTheoremStatement : SymmetricMonoidalTheoremStatement :=
  { sourceKey := "category-theory-symmetric-monoidal-categories-foundation-canonical-lane",
    theoremName := "Symmetric Monoidal Categories Foundation",
    theoremObject := "Every symmetric monoidal category admits a canonical Mac Lane-style coherence",
    classicalBoundary := "coherence theorem for symmetric monoidal categories",
    symmetricMonoidalClosureStatement := "symmetric monoidal theorem certificate internalized through admissible closure",
    certificateLane := "symmetric_monoidal_constrained",
    carriedRemainder := "unrestricted classical coherence boundary"
  }

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "category-theory-symmetric-monoidal-categories-foundation-canonical-lane" := by
  rfl

end CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean
end HautevilleHouse
