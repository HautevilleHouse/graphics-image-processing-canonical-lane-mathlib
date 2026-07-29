import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsImageProcessingCanonicalLaneLean

structure ImagePipeStage where
  transform : Type u
  inputResolution : Nat × Nat
  outputResolution : Nat × Nat
  colorSpaceModel : Prop
  spatialFilterKernel : Prop

structure ImagePipelinePackage where
  acquisitionStage : ImagePipeStage
  preprocessingStage : ImagePipeStage
  featureExtractionStage : ImagePipeStage
  decisionStage : ImagePipeStage
  pipelineComposable : Prop
  pipelineTerminates : Prop

structure ImagePipelineEvidence (P : ImagePipelinePackage) where
  pipelineComposableClosed : P.pipelineComposable
  pipelineTerminatesClosed : P.pipelineTerminates

def ImagePipelineClosed (P : ImagePipelinePackage) : Prop := P.pipelineComposable ∧ P.pipelineTerminates

theorem image_pipeline_closed_from_evidence (P : ImagePipelinePackage) (E : ImagePipelineEvidence P) : ImagePipelineClosed P := by
  exact And.intro E.pipelineComposableClosed E.pipelineTerminatesClosed

end GraphicsImageProcessingCanonicalLaneLean
end HautevilleHouse
