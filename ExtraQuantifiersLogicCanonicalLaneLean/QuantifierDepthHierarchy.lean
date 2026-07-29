import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtraQuantifiersLogicCanonicalLaneLean

structure QuantifierDepthHierarchy (A : AdmissibleClass) where
  boundedRankKernel : Prop
  alternationComplexity : Prop
  depthPatternAdmitted : Prop

structure QuantifierDepthHierarchyEvidence (A : AdmissibleClass) (H : QuantifierDepthHierarchy A) where
  boundedRankKernelClosed : H.boundedRankKernel
  alternationComplexityClosed : H.alternationComplexity
  depthPatternAdmittedClosed : H.depthPatternAdmitted

def QuantifierDepthHierarchyClosed (A : AdmissibleClass) (H : QuantifierDepthHierarchy A) : Prop :=
  H.boundedRankKernel ∧ H.alternationComplexity ∧ H.depthPatternAdmitted

theorem quantifier_depth_hierarchy_closed_from_evidence (A : AdmissibleClass) (H : QuantifierDepthHierarchy A)
    (E : QuantifierDepthHierarchyEvidence A H) : QuantifierDepthHierarchyClosed A H := by
  exact And.intro E.boundedRankKernelClosed (And.intro E.alternationComplexityClosed E.depthPatternAdmittedClosed)

end ExtraQuantifiersLogicCanonicalLaneLean
end HautevilleHouse