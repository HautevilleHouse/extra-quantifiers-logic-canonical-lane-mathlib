import ExtraQuantifiersLogicCanonicalLaneLean.ExtraQuantifierBridgeLemmas
import ExtraQuantifiersLogicCanonicalLaneLean.ExtraQuantifierGateLemmas

namespace HautevilleHouse
namespace ExtraQuantifiersLogicCanonicalLaneLean

def ConstrainedExtraQuantifierClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_extra_quantifier_endgame (A : AdmissibleClass) : ConstrainedExtraQuantifierClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ExtraQuantifiersLogicCanonicalLaneLean
end HautevilleHouse