import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtraQuantifiersLogicCanonicalLaneLean

structure QuantifierStratification (A : AdmissibleClass) where
  object : A.object
  stratificationCondition : Prop
  stratifiedQuantifierHierarchy : Prop
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def QuantifierStratificationClosed (Q : QuantifierStratification) : Prop :=
  Q.stratificationCondition ∧ Q.stratifiedQuantifierHierarchy ∧ (Q.endpointSatisfied ∨ Q.remainderRecorded)

end ExtraQuantifiersLogicCanonicalLaneLean
end HautevilleHouse