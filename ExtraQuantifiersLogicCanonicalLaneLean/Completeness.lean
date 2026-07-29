import canonicalLaneMathlib.AdmissibleClass

/-!
# Completeness for Extra Quantifiers Logic

Asserts completeness of the proof system with respect to the model theory.
-/

namespace HautevilleHouse
namespace ExtraQuantifiersLogicCanonicalLaneLean

theorem completeness (Γ : List QuantifierFormula) (φ : QuantifierFormula) :
    (∀ (D : Structure) (σ : VariableAssignment D.domain), (∀ γ ∈ Γ, evaluate γ D σ) → evaluate φ D σ) →
    Sequent Γ [φ] := by
  intro semanticEntailment
  sorry

end ExtraQuantifiersLogicCanonicalLaneLean
end HautevilleHouse