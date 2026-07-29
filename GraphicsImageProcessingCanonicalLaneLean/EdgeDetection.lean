import canonicalLaneMathlib.AdmissibleClass
open HautevilleHouse.GraphicsImageProcessingCanonicalLaneLean

namespace HautevilleHouse
namespace GraphicsImageProcessingCanonicalLaneLean

structure EdgeDetectionPackage where
  sourceImage : ImageRepresentationPackage
  gradientOperator : FilterConvolutionPackage
  threshold : Float
  nonMaxSuppression : Bool
  edgeMap : sourceImage.pixelGrid -> Prop
  gradientOperatorClosed : FilterConvolutionClosed gradientOperator
  edgeMapClosed : edgeMap = (fun (p : sourceImage.pixelGrid) => True)

structure EdgeDetectionEvidence (E : EdgeDetectionPackage) where
  gradientOperatorClosed : E.gradientOperatorClosed
  edgeMapClosed : E.edgeMapClosed

def EdgeDetectionClosed (E : EdgeDetectionPackage) : Prop :=
  E.gradientOperatorClosed ∧ E.edgeMapClosed

theorem edge_detection_closed_from_evidence
    (E : EdgeDetectionPackage) (Ev : EdgeDetectionEvidence E) :
    EdgeDetectionClosed E := by
  exact And.intro Ev.gradientOperatorClosed Ev.edgeMapClosed

end GraphicsImageProcessingCanonicalLaneLean
end HautevilleHouse
