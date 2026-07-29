import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtraQuantifiersLogicCanonicalLaneLean

structure SecondOrderQuantifierReduction (A : AdmissibleClass) where
  firstOrderTranslation : Prop
  predicateEncoding : Prop
  soundnessAndCompleteness : Prop

structure SecondOrderQuantifierReductionEvidence (A : AdmissibleClass) (S : SecondOrderQuantifierReduction A) where
  firstOrderTranslationClosed : S.firstOrderTranslation
  predicateEncodingClosed : S.predicateEncoding
  soundnessAndCompletenessClosed : S.soundnessAndCompleteness

def SecondOrderQuantifierReductionClosed (A : AdmissibleClass) (S : SecondOrderQuantifierReduction A) : Prop :=
  S.firstOrderTranslation ∧ S.predicateEncoding ∧ S.soundnessAndCompleteness

theorem second_order_quantifier_reduction_closed_from_evidence (A : AdmissibleClass) (S : SecondOrderQuantifierReduction A)
    (E : SecondOrderQuantifierReductionEvidence A S) : SecondOrderQuantifierReductionClosed A S := by
  exact And.intro E.firstOrderTranslationClosed (And.intro E.predicateEncodingClosed E.soundnessAndCompletenessClosed)

end ExtraQuantifiersLogicCanonicalLaneLean
end HautevilleHouse