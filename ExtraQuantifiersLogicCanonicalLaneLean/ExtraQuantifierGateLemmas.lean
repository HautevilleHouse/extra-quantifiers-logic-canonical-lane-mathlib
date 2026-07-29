import ExtraQuantifiersLogicCanonicalLaneLean.ExtraQuantifierBridgeLemmas

namespace HautevilleHouse
namespace ExtraQuantifiersLogicCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  (default : QuantifierStratification A).endpointSatisfied ∨ (default : QuantifierStratification A).remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  let Q := default : QuantifierStratification A
  exact Q.gateWitness

end ExtraQuantifiersLogicCanonicalLaneLean
end HautevilleHouse