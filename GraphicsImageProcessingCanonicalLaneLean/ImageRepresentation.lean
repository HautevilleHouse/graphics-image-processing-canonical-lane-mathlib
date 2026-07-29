import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsImageProcessingCanonicalLaneLean

structure ImageRepresentationPackage where
  pixelGrid : Type u
  colorSpace : Type v
  resolution : Nat
  bitDepth : Nat
  pixelValueMapping : pixelGrid -> colorSpace
  colorSpaceClosed : Prop
  pixelValueMappingClosed : pixelValueMapping

structure ImageRepresentationEvidence (R : ImageRepresentationPackage) where
  colorSpaceClosed : R.colorSpaceClosed
  pixelValueMappingClosed : R.pixelValueMappingClosed

def ImageRepresentationClosed (R : ImageRepresentationPackage) : Prop :=
  R.colorSpaceClosed ∧ R.pixelValueMapping = (fun (x : R.pixelGrid) => R.pixelValueMapping x)

theorem image_representation_closed_from_evidence
    (R : ImageRepresentationPackage) (E : ImageRepresentationEvidence R) :
    ImageRepresentationClosed R := by
  exact And.intro E.colorSpaceClosed E.pixelValueMappingClosed

end GraphicsImageProcessingCanonicalLaneLean
end HautevilleHouse
