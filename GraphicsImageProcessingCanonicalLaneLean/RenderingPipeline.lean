import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsImageProcessingCanonicalLaneLean

structure RenderingPipelinePackage where
  sceneGeometry : Type u
  shadingModel : Type v
  rasterization : Prop
  fragmentProcessing : Prop
  outputComposition : Prop

structure RenderingPipelineEvidence (R : RenderingPipelinePackage) where
  rasterizationClosed : R.rasterization
  fragmentProcessingClosed : R.fragmentProcessing
  outputCompositionClosed : R.outputComposition

def RenderingPipelineClosed (R : RenderingPipelinePackage) : Prop :=
  R.rasterization ∧ R.fragmentProcessing ∧ R.outputComposition

theorem rendering_pipeline_closed_from_evidence (R : RenderingPipelinePackage) (E : RenderingPipelineEvidence R) :
    RenderingPipelineClosed R := by
  exact And.intro E.rasterizationClosed (And.intro E.fragmentProcessingClosed E.outputCompositionClosed)

end GraphicsImageProcessingCanonicalLaneLean
end HautevilleHouse