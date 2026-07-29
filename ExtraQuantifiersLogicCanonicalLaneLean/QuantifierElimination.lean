import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtraQuantifiersLogicCanonicalLaneLean

structure QuantifierEliminationPackage where
  eliminationAlgorithm : Type u
  correctnessProof : Prop
  complexityBound : Nat
  applicableTheories : List String

structure QuantifierEliminationEvidence (Q : QuantifierEliminationPackage) where
  correctnessProofClosed : Q.correctnessProof
  complexityBoundClosed : Q.complexityBound ≥ 0

def QuantifierEliminationClosed (Q : QuantifierEliminationPackage) : Prop :=
  Q.correctnessProof ∧ Q.complexityBound ≥ 0

theorem quantifier_elimination_closed_from_evidence
    (Q : QuantifierEliminationPackage) (E : QuantifierEliminationEvidence Q) :
    QuantifierEliminationClosed Q := by
  exact And.intro E.correctnessProofClosed E.complexityBoundClosed

end ExtraQuantifiersLogicCanonicalLaneLean
end HautevilleHouse