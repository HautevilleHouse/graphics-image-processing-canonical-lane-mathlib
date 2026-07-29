import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsImageProcessingCanonicalLaneLean

structure ColorSpacePackage where
  sourceColorSpace : Type u
  targetColorSpace : Type v
  transformationMatrix : Type w
  gamutMapping : Prop
  linearity : Prop
  invertibility : Prop

structure ColorSpaceEvidence (C : ColorSpacePackage) where
  gamutMappingClosed : C.gamutMapping
  linearityClosed : C.linearity
  invertibilityClosed : C.invertibility

def ColorSpaceClosed (C : ColorSpacePackage) : Prop := C.gamutMapping ∧ C.linearity ∧ C.invertibility

theorem color_space_closed_from_evidence (C : ColorSpacePackage) (E : ColorSpaceEvidence C) : ColorSpaceClosed C := by
  exact And.intro E.gamutMappingClosed (And.intro E.linearityClosed E.invertibilityClosed)

end GraphicsImageProcessingCanonicalLaneLean
end HautevilleHouse
