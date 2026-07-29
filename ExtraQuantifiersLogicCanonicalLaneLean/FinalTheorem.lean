import canonicalLaneMathlib.AdmissibleClass
import ExtraQuantifiersLogicCanonicalLaneLean.BridgeLemmas
import ExtraQuantifiersLogicCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ExtraQuantifiersLogicCanonicalLaneLean

def ConstrainedExtraQuantifiersClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_extra_quantifiers_endgame (A : AdmissibleClass) :
    ConstrainedExtraQuantifiersClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ExtraQuantifiersLogicCanonicalLaneLean
end HautevilleHouse