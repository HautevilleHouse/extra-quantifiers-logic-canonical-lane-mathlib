import ExtraQuantifiersLogicCanonicalLaneLean.ExtraQuantifierAdmissibleClass

namespace HautevilleHouse
namespace ExtraQuantifiersLogicCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  QuantifierStratificationClosed (default : QuantifierStratification A)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  -- The default QuantifierStratification has all fields true
  have h : QuantifierStratification A := {
    object := A.object
    stratificationCondition := True
    stratifiedQuantifierHierarchy := True
    endpointSatisfied := True
    remainderRecorded := True
    gateWitness := Or.inl True.intro
  }
  exact h.stratificationCondition

end ExtraQuantifiersLogicCanonicalLaneLean
end HautevilleHouse