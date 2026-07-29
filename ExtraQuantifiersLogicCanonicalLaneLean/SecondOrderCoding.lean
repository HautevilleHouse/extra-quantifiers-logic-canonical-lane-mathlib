import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtraQuantifiersLogicCanonicalLaneLean

structure SecondOrderCodingPackage where
  codingScheme : Type u
  comprehensionAxiom : Prop
  choiceAxiom : Prop
  interpretabilityFirstOrder : Prop

structure SecondOrderCodingEvidence (S : SecondOrderCodingPackage) where
  comprehensionAxiomClosed : S.comprehensionAxiom
  choiceAxiomClosed : S.choiceAxiom
  interpretabilityFirstOrderClosed : S.interpretabilityFirstOrder

def SecondOrderCodingClosed (S : SecondOrderCodingPackage) : Prop :=
  S.comprehensionAxiom ∧ S.choiceAxiom ∧ S.interpretabilityFirstOrder

theorem second_order_coding_closed_from_evidence
    (S : SecondOrderCodingPackage) (E : SecondOrderCodingEvidence S) :
    SecondOrderCodingClosed S := by
  exact And.intro E.comprehensionAxiomClosed
    (And.intro E.choiceAxiomClosed E.interpretabilityFirstOrderClosed)

end ExtraQuantifiersLogicCanonicalLaneLean
end HautevilleHouse