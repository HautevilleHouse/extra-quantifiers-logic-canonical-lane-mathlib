import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtraQuantifiersLogicCanonicalLaneLean

structure HerbrandExpansion (A : AdmissibleClass) where
  groundInstances : Prop
  expansionFinite : Prop
  satisfiabilityEquivalent : Prop

structure HerbrandExpansionEvidence (A : AdmissibleClass) (H : HerbrandExpansion A) where
  groundInstancesClosed : H.groundInstances
  expansionFiniteClosed : H.expansionFinite
  satisfiabilityEquivalentClosed : H.satisfiabilityEquivalent

def HerbrandExpansionClosed (A : AdmissibleClass) (H : HerbrandExpansion A) : Prop :=
  H.groundInstances ∧ H.expansionFinite ∧ H.satisfiabilityEquivalent

theorem herbrand_expansion_closed_from_evidence (A : AdmissibleClass) (H : HerbrandExpansion A)
    (E : HerbrandExpansionEvidence A H) : HerbrandExpansionClosed A H := by
  exact And.intro E.groundInstancesClosed (And.intro E.expansionFiniteClosed E.satisfiabilityEquivalentClosed)

end ExtraQuantifiersLogicCanonicalLaneLean
end HautevilleHouse