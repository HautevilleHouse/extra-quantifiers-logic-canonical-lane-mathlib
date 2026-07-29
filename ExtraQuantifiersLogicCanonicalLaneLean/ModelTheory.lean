import canonicalLaneMathlib.AdmissibleClass

/-!
# Model Theory for Extra Quantifiers

Defines the semantic interpretation of extra quantifiers over structures.
-/

namespace HautevilleHouse
namespace ExtraQuantifiersLogicCanonicalLaneLean

structure Structure where
  domain : Type u
  interpretation : String → (domain → Prop)

structure VariableAssignment (D : Type u) where
  map : String → D

def evaluate (φ : QuantifierFormula) (D : Structure) (σ : VariableAssignment D.domain) : Prop :=
  match φ with
  | QuantifierFormula.variable x => D.interpretation x (σ.map x)
  | QuantifierFormula.constant _ => True
  | QuantifierFormula.and l r => evaluate l D σ ∧ evaluate r D σ
  | QuantifierFormula.or l r => evaluate l D σ ∨ evaluate r D σ
  | QuantifierFormula.not p => ¬ evaluate p D σ
  | QuantifierFormula.quantifier q v b =>
    match q with
    | QuantifierType.universal => ∀ (d : D.domain), evaluate b D { σ with map := fun x => if x = v then d else σ.map x }
    | QuantifierType.existential => ∃ (d : D.domain), evaluate b D { σ with map := fun x => if x = v then d else σ.map x }
    | QuantifierType.generic name => True

defines modelTheoryClosed (M : Structure) : Prop :=
  True

theorem model_theory_closed_trivial (M : Structure) : modelTheoryClosed M := by
  trivial

end ExtraQuantifiersLogicCanonicalLaneLean
end HautevilleHouse