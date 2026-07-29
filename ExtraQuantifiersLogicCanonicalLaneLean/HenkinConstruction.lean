import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtraQuantifiersLogicCanonicalLaneLean

structure HenkinConstructionPackage where
  witnessSet : Type u
  witnessFunction : witnessSet → Prop
  completenessCondition : Prop
  modelExtensionExists : Prop

structure HenkinConstructionEvidence (H : HenkinConstructionPackage) where
  witnessSetClosed : Nonempty H.witnessSet
  witnessFunctionClosed : ∀ w : H.witnessSet, H.witnessFunction w
  completenessConditionClosed : H.completenessCondition
  modelExtensionExistsClosed : H.modelExtensionExists

def HenkinConstructionClosed (H : HenkinConstructionPackage) : Prop :=
  (∀ w : H.witnessSet, H.witnessFunction w) ∧ H.completenessCondition ∧ H.modelExtensionExists

theorem henkin_construction_closed_from_evidence
    (H : HenkinConstructionPackage) (E : HenkinConstructionEvidence H) :
    HenkinConstructionClosed H := by
  exact And.intro E.witnessFunctionClosed
    (And.intro E.completenessConditionClosed E.modelExtensionExistsClosed)

end ExtraQuantifiersLogicCanonicalLaneLean
end HautevilleHouse