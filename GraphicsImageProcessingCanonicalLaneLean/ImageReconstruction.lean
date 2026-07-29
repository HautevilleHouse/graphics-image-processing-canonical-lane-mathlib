import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsImageProcessingCanonicalLaneLean

structure ImageReconstructionPackage where
  sourceImage : Type u
  reconstructedImage : Type v
  forwardModel : sourceImage → reconstructedImage → Prop
  inverseModel : reconstructedImage → sourceImage → Prop
  fidelityCondition : Prop
  fidelityConditionTerm : fidelityCondition

structure ImageReconstructionEvidence (R : ImageReconstructionPackage) where
  fidelityConditionClosed : R.fidelityCondition

def ImageReconstructionClosed (R : ImageReconstructionPackage) : Prop :=
  R.fidelityCondition

theorem image_reconstruction_closed_from_evidence (R : ImageReconstructionPackage) (E : ImageReconstructionEvidence R) :
    ImageReconstructionClosed R := by
  exact E.fidelityConditionClosed

end GraphicsImageProcessingCanonicalLaneLean
end HautevilleHouse