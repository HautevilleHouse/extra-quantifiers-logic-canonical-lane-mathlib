import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtraQuantifiersLogicCanonicalLaneLean

structure QuantifierHierarchyPackage where
  existentialLayer : Prop
  universalLayer : Prop
  nestedAlternationBound : Nat
  boundednessCondition : Prop
  hierarchyComplexity : Nat

structure QuantifierHierarchyEvidence (H : QuantifierHierarchyPackage) where
  existentialLayerClosed : H.existentialLayer
  universalLayerClosed : H.universalLayer
  nestedAlternationBoundClosed : H.boundednessCondition

def QuantifierHierarchyClosed (H : QuantifierHierarchyPackage) : Prop :=
  H.existentialLayer ∧ H.universalLayer ∧ H.boundednessCondition

theorem quantifier_hierarchy_closed_from_evidence
    (H : QuantifierHierarchyPackage) (E : QuantifierHierarchyEvidence H) :
    QuantifierHierarchyClosed H := by
  exact And.intro E.existentialLayerClosed
    (And.intro E.universalLayerClosed E.nestedAlternationBoundClosed)

end ExtraQuantifiersLogicCanonicalLaneLean
end HautevilleHouse