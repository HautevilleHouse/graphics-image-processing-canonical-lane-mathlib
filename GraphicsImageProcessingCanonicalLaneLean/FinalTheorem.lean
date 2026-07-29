import canonicalLaneMathlib.AdmissibleClass
open HautevilleHouse.GraphicsImageProcessingCanonicalLaneLean

namespace HautevilleHouse
namespace GraphicsImageProcessingCanonicalLaneLean

def GraphicsImageProcessingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem graphics_image_processing_endgame (A : AdmissibleClass) :
    GraphicsImageProcessingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GraphicsImageProcessingCanonicalLaneLean
end HautevilleHouse
