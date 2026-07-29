import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtraQuantifiersLogicCanonicalLaneLean

structure GentzenCutElimination (A : AdmissibleClass) where
  sequentDerivation : Prop
  quantifierRules : Prop
  cutRemoved : Prop
  midsequentExists : Prop

structure GentzenCutEliminationEvidence (A : AdmissibleClass) (G : GentzenCutElimination A) where
  sequentDerivationClosed : G.sequentDerivation
  quantifierRulesClosed : G.quantifierRules
  cutRemovedClosed : G.cutRemoved
  midsequentExistsClosed : G.midsequentExists

def GentzenCutEliminationClosed (A : AdmissibleClass) (G : GentzenCutElimination A) : Prop :=
  G.sequentDerivation ∧ G.quantifierRules ∧ G.cutRemoved ∧ G.midsequentExists

theorem gentzen_cut_elimination_closed_from_evidence (A : AdmissibleClass) (G : GentzenCutElimination A)
    (E : GentzenCutEliminationEvidence A G) : GentzenCutEliminationClosed A G := by
  exact And.intro E.sequentDerivationClosed (And.intro E.quantifierRulesClosed
    (And.intro E.cutRemovedClosed E.midsequentExistsClosed))

end ExtraQuantifiersLogicCanonicalLaneLean
end HautevilleHouse