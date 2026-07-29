import canonicalLaneMathlib.AdmissibleClass

/-!
# Quantifier Syntax Package

Defines the syntax for extra quantifiers beyond the standard ∀ and ∃.
-/

namespace HautevilleHouse
namespace ExtraQuantifiersLogicCanonicalLaneLean

inductive QuantifierType where
  | universal
  | existential
  | generic (name : String)
deriving Repr, DecidableEq

structure QuantifierFormula where
  quantifier : QuantifierType
  variable : String
  body : QuantifierFormula
  | variable (name : String)
  | constant (value : String)
  | and (left right : QuantifierFormula)
  | or (left right : QuantifierFormula)
  | not (child : QuantifierFormula)
deriving Repr, DecidableEq

structure QuantifierSyntaxPackage where
  allowedTypes : List QuantifierType
  formulas : List QuantifierFormula
  wellFormednessRules : List String

def quantifierSyntaxClosed (p : QuantifierSyntaxPackage) : Prop :=
  p.allowedTypes ≠ [] ∧ p.wellFormednessRules ≠ []

theorem quantifier_syntax_closed_from_package (p : QuantifierSyntaxPackage) (h : p.allowedTypes ≠ [] ∧ p.wellFormednessRules ≠ []) :
    quantifierSyntaxClosed p := h

end ExtraQuantifiersLogicCanonicalLaneLean
end HautevilleHouse