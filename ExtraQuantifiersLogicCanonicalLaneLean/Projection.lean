import HautevilleHouse.ExtraQuantifiersLogicCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ExtraQuantifiersLogicCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def quantifierProjection : Projection QuantifierEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem quantifier_projection_idempotent (x : QuantifierEndgameState) :
    quantifierProjection.toFun (quantifierProjection.toFun x) = quantifierProjection.toFun x := by
  exact quantifierProjection.idempotent x

end ExtraQuantifiersLogicCanonicalLaneLean
end HautevilleHouse
