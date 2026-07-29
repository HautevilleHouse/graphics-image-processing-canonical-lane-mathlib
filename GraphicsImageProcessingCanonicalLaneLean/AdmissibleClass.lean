import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsImageProcessingCanonicalLaneLean

structure AdmissibleClass where
  object : GraphicsImageAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GraphicsImageProcessingWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GraphicsImageProcessingCanonicalLaneLean
end HautevilleHouse