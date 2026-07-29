import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsImageProcessingCanonicalLaneLean

structure ColorSpaceConversionPackage where
  sourceSpace : Type u
  targetSpace : Type v
  conversionMatrix : Type w
  invertibility : Prop
  linearity : Prop
  gamutMapping : Prop
  perceptualUniformity : Prop

structure ColorSpaceConversionEvidence (C : ColorSpaceConversionPackage) where
  invertibilityClosed : C.invertibility
  linearityClosed : C.linearity
  gamutMappingClosed : C.gamutMapping
  perceptualUniformityClosed : C.perceptualUniformity

def ColorSpaceConversionClosed (C : ColorSpaceConversionPackage) : Prop :=
  C.invertibility ∧ C.linearity ∧ C.gamutMapping ∧ C.perceptualUniformity

theorem color_space_conversion_closed_from_evidence (C : ColorSpaceConversionPackage) (Ev : ColorSpaceConversionEvidence C) : ColorSpaceConversionClosed C := by
  exact And.intro Ev.invertibilityClosed (And.intro Ev.linearityClosed (And.intro Ev.gamutMappingClosed Ev.perceptualUniformityClosed))

end GraphicsImageProcessingCanonicalLaneLean
end HautevilleHouse