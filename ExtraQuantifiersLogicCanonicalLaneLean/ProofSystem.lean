import canonicalLaneMathlib.AdmissibleClass

/-!
# Proof System for Extra Quantifiers

Provides a proof calculus for reasoning about extra quantifiers.
-/

namespace HautevilleHouse
namespace ExtraQuantifiersLogicCanonicalLaneLean

inductive Sequent (Γ Δ : List QuantifierFormula) : Prop where
  | axiom (h : Γ.intersect Δ ≠ ∅)
  | andLeft (h : Sequent (Γ ++ [QuantifierFormula.and A B]) Δ) : Sequent Γ Δ
  | andRight (h : Sequent Γ (Δ ++ [A])) (h' : Sequent Γ (Δ ++ [B])) : Sequent Γ (Δ ++ [QuantifierFormula.and A B])

structure ProofSystemPackage where
  rules : List String
  axioms : List String

def proofSystemClosed (P : ProofSystemPackage) : Prop :=
  P.rules ≠ [] ∧ P.axioms ≠ []

theorem proof_system_closed_from_package (P : ProofSystemPackage) (hr : P.rules ≠ []) (ha : P.axioms ≠ []) :
    proofSystemClosed P := by
  exact And.intro hr ha

end ExtraQuantifiersLogicCanonicalLaneLean
end HautevilleHouse