import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsImageProcessingCanonicalLaneLean

structure SamplingKernel where
  kernelFunction : Type u
  supportCompact : Prop
  partitionOfUnity : Prop
  convolutionClosed : Prop
  supportCompactTerm : supportCompact
  partitionOfUnityTerm : partitionOfUnity
  convolutionClosedTerm : convolutionClosed

structure SamplingKernelEvidence (K : SamplingKernel) where
  supportCompactClosed : K.supportCompact
  partitionOfUnityClosed : K.partitionOfUnity
  convolutionClosedClosed : K.convolutionClosed

def SamplingKernelClosed (K : SamplingKernel) : Prop :=
  K.supportCompact ∧ K.partitionOfUnity ∧ K.convolutionClosed

theorem sampling_kernel_closed_from_evidence (K : SamplingKernel) (E : SamplingKernelEvidence K) :
    SamplingKernelClosed K := by
  exact And.intro E.supportCompactClosed (And.intro E.partitionOfUnityClosed E.convolutionClosedClosed)

end GraphicsImageProcessingCanonicalLaneLean
end HautevilleHouse