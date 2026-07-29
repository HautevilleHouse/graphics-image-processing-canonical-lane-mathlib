import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsImageProcessingCanonicalLaneLean

structure ImageFilterKernelPackage where
  kernelCoefficients : Type u
  convolutionType : Type v
  separability : Prop
  normalization : Prop
  boundaryCondition : Prop

structure ImageFilterKernelEvidence (K : ImageFilterKernelPackage) where
  separabilityClosed : K.separability
  normalizationClosed : K.normalization
  boundaryConditionClosed : K.boundaryCondition

def ImageFilterKernelClosed (K : ImageFilterKernelPackage) : Prop :=
  K.separability ∧ K.normalization ∧ K.boundaryCondition

theorem image_filter_kernel_closed_from_evidence (K : ImageFilterKernelPackage) (E : ImageFilterKernelEvidence K) :
    ImageFilterKernelClosed K := by
  exact And.intro E.separabilityClosed (And.intro E.normalizationClosed E.boundaryConditionClosed)

end GraphicsImageProcessingCanonicalLaneLean
end HautevilleHouse