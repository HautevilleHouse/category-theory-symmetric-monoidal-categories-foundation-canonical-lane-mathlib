import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean.SymmetricMonoidalCategory

/-!
# Admissible Class for Symmetric Monoidal Categories

This module defines the admissible class structure for symmetric monoidal categories,
binding the object and the closure conditions.
-/

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean

open CategoryTheory
open CategoryTheory.Monoidal

structure SymmetricMonoidalAdmittedObject (C : Type u) [Category.{v} C] [MonoidalCategory C] where
  symmetricPackage : SymmetricMonoidalCategoryPackage C
  conclusion : SymmetricMonoidalCategoryClosed symmetricPackage

structure AdmissibleClass where
  object : SymmetricMonoidalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean
end HautevilleHouse