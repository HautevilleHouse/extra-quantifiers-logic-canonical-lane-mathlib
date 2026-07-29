import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtraQuantifiersLogicCanonicalLaneLean

structure AdmissibleClass where
  object : QuantifierAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  QuantifierWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ExtraQuantifiersLogicCanonicalLaneLean
end HautevilleHouse
