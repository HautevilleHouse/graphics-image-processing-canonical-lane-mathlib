import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsImageProcessingCanonicalLaneLean

structure ImageRestorationPackage where
  degradationModel : Type u
  regularizationTerm : Prop
  iterativeReconstruction : Prop
  convergenceCriterion : Prop
  artifactSuppression : Prop

structure ImageRestorationEvidence (R : ImageRestorationPackage) where
  regularizationTermClosed : R.regularizationTerm
  iterativeReconstructionClosed : R.iterativeReconstruction
  convergenceCriterionClosed : R.convergenceCriterion
  artifactSuppressionClosed : R.artifactSuppression

def ImageRestorationClosed (R : ImageRestorationPackage) : Prop := R.regularizationTerm ∧ R.iterativeReconstruction ∧ R.convergenceCriterion ∧ R.artifactSuppression

theorem image_restoration_closed_from_evidence (R : ImageRestorationPackage) (E : ImageRestorationEvidence R) : ImageRestorationClosed R := by
  exact And.intro E.regularizationTermClosed (And.intro E.iterativeReconstructionClosed (And.intro E.convergenceCriterionClosed E.artifactSuppressionClosed))

end GraphicsImageProcessingCanonicalLaneLean
end HautevilleHouse
