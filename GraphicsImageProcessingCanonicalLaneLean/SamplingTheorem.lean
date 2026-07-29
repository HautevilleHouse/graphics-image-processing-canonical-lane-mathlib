import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsImageProcessingCanonicalLaneLean

structure SamplingPackage {C : ConvolutionKernelPackage} where
  bandlimitedModel : Prop
  samplingRate : Prop
  reconstructionFilter : ConvolutionKernelPackage
  nyquistCondition : Prop
  aliasingFree : Prop

structure SamplingEvidence {C : ConvolutionKernelPackage}
    (S : SamplingPackage C) where
  bandlimitedModelClosed : S.bandlimitedModel
  samplingRateClosed : S.samplingRate
  nyquistConditionClosed : S.nyquistCondition
  aliasingFreeClosed : S.aliasingFree

def SamplingClosed {C : ConvolutionKernelPackage} (S : SamplingPackage C) : Prop :=
  S.bandlimitedModel ∧ S.samplingRate ∧ S.nyquistCondition ∧ S.aliasingFree

theorem sampling_closed_from_evidence {C : ConvolutionKernelPackage}
    (S : SamplingPackage C) (E : SamplingEvidence S) : SamplingClosed S := by
  exact And.intro E.bandlimitedModelClosed (And.intro E.samplingRateClosed
    (And.intro E.nyquistConditionClosed E.aliasingFreeClosed))

end GraphicsImageProcessingCanonicalLaneLean
end HautevilleHouse
