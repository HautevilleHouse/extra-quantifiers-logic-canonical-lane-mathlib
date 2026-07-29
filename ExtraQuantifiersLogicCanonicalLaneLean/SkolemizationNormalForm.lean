import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtraQuantifiersLogicCanonicalLaneLean

structure SkolemizationNormalForm (A : AdmissibleClass) where
  quantifiedPremise : Prop
  skolemizedClause : Prop
  equivalencePreserved : Prop

structure SkolemizationNormalFormEvidence (A : AdmissibleClass) (S : SkolemizationNormalForm A) where
  quantifiedPremiseClosed : S.quantifiedPremise
  skolemizedClauseClosed : S.skolemizedClause
  equivalencePreservedClosed : S.equivalencePreserved

def SkolemizationNormalFormClosed (A : AdmissibleClass) (S : SkolemizationNormalForm A) : Prop :=
  S.quantifiedPremise ∧ S.skolemizedClause ∧ S.equivalencePreserved

theorem skolemization_normal_form_closed_from_evidence (A : AdmissibleClass) (S : SkolemizationNormalForm A)
    (E : SkolemizationNormalFormEvidence A S) : SkolemizationNormalFormClosed A S := by
  exact And.intro E.quantifiedPremiseClosed (And.intro E.skolemizedClauseClosed E.equivalencePreservedClosed)

end ExtraQuantifiersLogicCanonicalLaneLean
end HautevilleHouse