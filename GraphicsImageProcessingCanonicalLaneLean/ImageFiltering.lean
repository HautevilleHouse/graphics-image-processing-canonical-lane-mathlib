import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsImageProcessingCanonicalLaneLean

structure ImageFilteringPackage where
  intensityTransform : Type u
  convolutionKernel : Type v
  filterResponse : Type w
  linearity : Prop
  translationInvariance : Prop
  boundedness : Prop
  kernelSupportCompact : Prop

structure ImageFilteringEvidence (F : ImageFilteringPackage) where
  linearityClosed : F.linearity
  translationInvarianceClosed : F.translationInvariance
  boundednessClosed : F.boundedness
  kernelSupportCompactClosed : F.kernelSupportCompact

def ImageFilteringClosed (F : ImageFilteringPackage) : Prop :=
  F.linearity ∧ F.translationInvariance ∧ F.boundedness ∧ F.kernelSupportCompact

theorem image_filtering_closed_from_evidence (F : ImageFilteringPackage) (E : ImageFilteringEvidence F) : ImageFilteringClosed F := by
  exact And.intro E.linearityClosed (And.intro E.translationInvarianceClosed (And.intro E.boundednessClosed E.kernelSupportCompactClosed))

end GraphicsImageProcessingCanonicalLaneLean
end HautevilleHouse