import canonicalLaneMathlib.BridgeLemmas

namespace HautevilleHouse
namespace GraphicsImageProcessingCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GraphicsImageProcessingWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GraphicsImageProcessingCanonicalLaneLean
end HautevilleHouse