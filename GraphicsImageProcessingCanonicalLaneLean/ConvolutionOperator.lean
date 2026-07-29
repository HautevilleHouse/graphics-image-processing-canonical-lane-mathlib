import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsImageProcessingCanonicalLaneLean

structure ConvolutionKernelPackage where
  kernelType : Type u
  kernelFunction : kernelType → Float
  convolutionLaw : Prop
  boundaryHandling : Prop
  associativity : Prop

structure ConvolutionKernelEvidence (K : ConvolutionKernelPackage) where
  convolutionLawClosed : K.convolutionLaw
  boundaryHandlingClosed : K.boundaryHandling
  associativityClosed : K.associativity

def ConvolutionKernelClosed (K : ConvolutionKernelPackage) : Prop :=
  K.convolutionLaw ∧ K.boundaryHandling ∧ K.associativity

theorem convolution_kernel_closed_from_evidence (K : ConvolutionKernelPackage)
    (E : ConvolutionKernelEvidence K) : ConvolutionKernelClosed K := by
  exact And.intro E.convolutionLawClosed (And.intro E.boundaryHandlingClosed E.associativityClosed)

end GraphicsImageProcessingCanonicalLaneLean
end HautevilleHouse
