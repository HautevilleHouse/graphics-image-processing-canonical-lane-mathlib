import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsImageProcessingCanonicalLaneLean

structure PixelGeometryPackage where
  pixelCoordinates : Type u
  neighborhoodStructure : Type v
  discreteMetric : Prop
  connectivityRule : Prop
  boundaryHandling : Prop

structure PixelGeometryEvidence (P : PixelGeometryPackage) where
  discreteMetricClosed : P.discreteMetric
  connectivityRuleClosed : P.connectivityRule
  boundaryHandlingClosed : P.boundaryHandling

def PixelGeometryClosed (P : PixelGeometryPackage) : Prop :=
  P.discreteMetric ∧ P.connectivityRule ∧ P.boundaryHandling

theorem pixel_geometry_closed_from_evidence (P : PixelGeometryPackage) (E : PixelGeometryEvidence P) :
    PixelGeometryClosed P := by
  exact And.intro E.discreteMetricClosed (And.intro E.connectivityRuleClosed E.boundaryHandlingClosed)

end GraphicsImageProcessingCanonicalLaneLean
end HautevilleHouse