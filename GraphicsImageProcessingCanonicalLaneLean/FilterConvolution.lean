import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsImageProcessingCanonicalLaneLean

structure FilterConvolutionPackage where
  kernelMatrix : List (List Float)
  kernelSize : Nat
  stride : Nat
  padding : Nat
  convolutionOperator : List (List Float) -> List (List Float) -> List (List Float)
  kernelNormalized : kernelMatrix.sum (fun row => row.sum) = 1.0
  kernelNormalizedClosed : kernelNormalized

structure FilterConvolutionEvidence (F : FilterConvolutionPackage) where
  kernelNormalizedClosed : F.kernelNormalizedClosed

def FilterConvolutionClosed (F : FilterConvolutionPackage) : Prop :=
  F.kernelNormalized

theorem filter_convolution_closed_from_evidence
    (F : FilterConvolutionPackage) (E : FilterConvolutionEvidence F) :
    FilterConvolutionClosed F := by
  exact E.kernelNormalizedClosed

end GraphicsImageProcessingCanonicalLaneLean
end HautevilleHouse
