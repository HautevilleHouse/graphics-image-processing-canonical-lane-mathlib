import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsImageProcessingCanonicalLaneLean

structure FeatureMatchingPackage where
  keypointDescriptor : Type u
  matchingMetric : Type v
  correspondenceRatio : Prop
  homographyValidation : Prop
  uniquenessConstraint : Prop

structure FeatureMatchingEvidence (F : FeatureMatchingPackage) where
  correspondenceRatioClosed : F.correspondenceRatio
  homographyValidationClosed : F.homographyValidation
  uniquenessConstraintClosed : F.uniquenessConstraint

def FeatureMatchingClosed (F : FeatureMatchingPackage) : Prop := F.correspondenceRatio ∧ F.homographyValidation ∧ F.uniquenessConstraint

theorem feature_matching_closed_from_evidence (F : FeatureMatchingPackage) (E : FeatureMatchingEvidence F) : FeatureMatchingClosed F := by
  exact And.intro E.correspondenceRatioClosed (And.intro E.homographyValidationClosed E.uniquenessConstraintClosed)

end GraphicsImageProcessingCanonicalLaneLean
end HautevilleHouse
