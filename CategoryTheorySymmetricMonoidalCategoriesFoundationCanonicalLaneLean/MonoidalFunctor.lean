import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean.SymmetricMonoidalCategory

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean

structure MonoidalFunctorPackage (C D : SymmetricMonoidalCategoryPackage) where
  functor : C.category → D.category
  tensorPreservation : ∀ A B : C.category, functor (C.tensorProduct A B) = D.tensorProduct (functor A) (functor B)
  unitPreservation : functor C.tensorUnit = D.tensorUnit
  coherenceConstraints : Prop
  tensorPreservationTerm : tensorPreservation
  unitPreservationTerm : unitPreservation
  coherenceConstraintsTerm : coherenceConstraints

structure MonoidalFunctorEvidence {C D : SymmetricMonoidalCategoryPackage}
    (F : MonoidalFunctorPackage C D) where
  tensorPreservationClosed : F.tensorPreservation
  unitPreservationClosed : F.unitPreservation
  coherenceConstraintsClosed : F.coherenceConstraints

def MonoidalFunctorClosed {C D : SymmetricMonoidalCategoryPackage}
    (F : MonoidalFunctorPackage C D) : Prop :=
  F.tensorPreservation ∧ F.unitPreservation ∧ F.coherenceConstraints

theorem monoidal_functor_closed_from_evidence
    {C D : SymmetricMonoidalCategoryPackage} (F : MonoidalFunctorPackage C D)
    (E : MonoidalFunctorEvidence F) : MonoidalFunctorClosed F := by
  exact And.intro E.tensorPreservationClosed
    (And.intro E.unitPreservationClosed E.coherenceConstraintsClosed)

end CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean
end HautevilleHouse