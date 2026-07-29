import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsImageProcessingCanonicalLaneLean

structure EdgeDetectionOperatorPackage where
  gradientOperator : Type u
  nonMaxSuppression : Prop
  hysteresisThresholding : Prop
  edgeLinking : Prop

structure EdgeDetectionOperatorEvidence (E : EdgeDetectionOperatorPackage) where
  nonMaxSuppressionClosed : E.nonMaxSuppression
  hysteresisThresholdingClosed : E.hysteresisThresholding
  edgeLinkingClosed : E.edgeLinking

def EdgeDetectionOperatorClosed (E : EdgeDetectionOperatorPackage) : Prop :=
  E.nonMaxSuppression ∧ E.hysteresisThresholding ∧ E.edgeLinking

theorem edge_detection_operator_closed_from_evidence (E : EdgeDetectionOperatorPackage) (Ev : EdgeDetectionOperatorEvidence E) :
    EdgeDetectionOperatorClosed E := by
  exact And.intro Ev.nonMaxSuppressionClosed (And.intro Ev.hysteresisThresholdingClosed Ev.edgeLinkingClosed)

end GraphicsImageProcessingCanonicalLaneLean
end HautevilleHouse