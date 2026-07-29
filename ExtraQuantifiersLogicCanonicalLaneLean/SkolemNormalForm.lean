import HautevilleHouse.ExtraQuantifiersLogicCanonicalLaneLean.QuantifierHierarchy

/-!
# Skolem Normal Form Package
-/

namespace HautevilleHouse
namespace ExtraQuantifiersLogicCanonicalLaneLean

structure SkolemNormalFormPackage {H : QuantifierHierarchyPackage}
    (F : QuantifierHierarchyEvidence H) where
  existentialElimination : Prop
  functionSymbolIntroduced : Prop
  satisfiabilityPreserved : Prop
  modelExpansionExists : Prop

structure SkolemNormalFormEvidence {H : QuantifierHierarchyPackage}
    {F : QuantifierHierarchyEvidence H}
    (S : SkolemNormalFormPackage F) where
  existentialEliminationClosed : S.existentialElimination
  functionSymbolIntroducedClosed : S.functionSymbolIntroduced
  satisfiabilityPreservedClosed : S.satisfiabilityPreserved
  modelExpansionExistsClosed : S.modelExpansionExists

def SkolemNormalFormClosed {H : QuantifierHierarchyPackage}
    {F : QuantifierHierarchyEvidence H}
    (S : SkolemNormalFormPackage F) : Prop :=
  S.existentialElimination ∧ S.functionSymbolIntroduced ∧
  S.satisfiabilityPreserved ∧ S.modelExpansionExists

theorem skolem_normal_form_closed_from_evidence
    {H : QuantifierHierarchyPackage} {F : QuantifierHierarchyEvidence H}
    (S : SkolemNormalFormPackage F) (E : SkolemNormalFormEvidence S) :
    SkolemNormalFormClosed S := by
  exact And.intro E.existentialEliminationClosed
    (And.intro E.functionSymbolIntroducedClosed
      (And.intro E.satisfiabilityPreservedClosed E.modelExpansionExistsClosed))

end ExtraQuantifiersLogicCanonicalLaneLean
end HautevilleHouse
