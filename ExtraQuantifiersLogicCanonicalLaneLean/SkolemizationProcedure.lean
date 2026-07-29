import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtraQuantifiersLogicCanonicalLaneLean

structure SkolemizationProcedurePackage where
  skolemFunctionExists : Prop
  quantifierElimination : Prop
  preservingSatisfiability : Prop
  substitutionConsistency : Prop

structure SkolemizationProcedureEvidence (S : SkolemizationProcedurePackage) where
  skolemFunctionExistsClosed : S.skolemFunctionExists
  quantifierEliminationClosed : S.quantifierElimination
  preservingSatisfiabilityClosed : S.preservingSatisfiability
  substitutionConsistencyClosed : S.substitutionConsistency

def SkolemizationProcedureClosed (S : SkolemizationProcedurePackage) : Prop :=
  S.skolemFunctionExists ∧ S.quantifierElimination ∧ S.preservingSatisfiability ∧ S.substitutionConsistency

theorem skolemization_procedure_closed_from_evidence
    (S : SkolemizationProcedurePackage) (E : SkolemizationProcedureEvidence S) :
    SkolemizationProcedureClosed S := by
  exact And.intro E.skolemFunctionExistsClosed
    (And.intro E.quantifierEliminationClosed
      (And.intro E.preservingSatisfiabilityClosed E.substitutionConsistencyClosed))

end ExtraQuantifiersLogicCanonicalLaneLean
end HautevilleHouse