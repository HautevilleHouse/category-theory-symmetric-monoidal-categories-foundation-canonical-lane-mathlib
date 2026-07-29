import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean.SymmetricMonoidalCategory
import Mathlib.CategoryTheory.Monoidal.Coherence

/-!
# Coherence Lemmas

This module provides the bridge lemma layer for coherence in symmetric monoidal
categories. It constructs the bridgeClosed predicate by extracting coherence
properties from the symmetric monoidal category package.
-/

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean

open CategoryTheory
open CategoryTheory.Monoidal

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SymmetricMonoidalCategoryClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end CategoryTheorySymmetricMonoidalCategoriesFoundationCanonicalLaneLean
end HautevilleHouse