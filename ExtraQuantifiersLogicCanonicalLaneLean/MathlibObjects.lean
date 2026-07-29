import HautevilleHouse.ExtraQuantifiersLogicCanonicalLaneLean.TheoremStatement
import canonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ExtraQuantifiersLogicCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure QuantifierSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure QuantifierAdmittedObject where
  space : QuantifierSpace
  closedFormula : Prop
  fullyQuantified : Prop
  witnessModel : Type
  witnessTopology : TopologicalSpace witnessModel
  validWitness : Prop
  conclusion : validWitness

structure QuantifierEndgameState where
  object : QuantifierAdmittedObject

def QuantifierWitnessClosed (O : QuantifierAdmittedObject) : Prop :=
  O.validWitness

end ExtraQuantifiersLogicCanonicalLaneLean
end HautevilleHouse
