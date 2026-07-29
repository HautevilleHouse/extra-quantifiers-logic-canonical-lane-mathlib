import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtraQuantifiersLogicCanonicalLaneLean

structure CutEliminationPackage where
  sequentCalculus : Type u
  cutRulePresent : Prop
  eliminationProcedure : Prop
  complexityBound : Nat

structure CutEliminationEvidence (C : CutEliminationPackage) where
  cutRulePresentClosed : C.cutRulePresent
  eliminationProcedureClosed : C.eliminationProcedure
  complexityBoundClosed : C.complexityBound ≥ 1

def CutEliminationClosed (C : CutEliminationPackage) : Prop :=
  C.cutRulePresent ∧ C.eliminationProcedure ∧ C.complexityBound ≥ 1

theorem cut_elimination_closed_from_evidence
    (C : CutEliminationPackage) (E : CutEliminationEvidence C) :
    CutEliminationClosed C := by
  exact And.intro E.cutRulePresentClosed
    (And.intro E.eliminationProcedureClosed E.complexityBoundClosed)

end ExtraQuantifiersLogicCanonicalLaneLean
end HautevilleHouse