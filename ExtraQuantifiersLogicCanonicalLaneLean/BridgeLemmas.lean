import HautevilleHouse.ExtraQuantifiersLogicCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ExtraQuantifiersLogicCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  QuantifierWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ExtraQuantifiersLogicCanonicalLaneLean
end HautevilleHouse
