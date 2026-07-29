import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsImageProcessingCanonicalLaneLean

structure ColorSpacePackage where
  sourceSpace : Type u
  targetSpace : Type v
  transformMatrix : Type w
  invertibility : Prop
  linearity : Prop
  gamutMapping : Prop

structure ColorSpaceEvidence (C : ColorSpacePackage) where
  invertibilityClosed : C.invertibility
  linearityClosed : C.linearity
  gamutMappingClosed : C.gamutMapping

def ColorSpaceClosed (C : ColorSpacePackage) : Prop :=
  C.invertibility ∧ C.linearity ∧ C.gamutMapping

theorem color_space_closed_from_evidence (C : ColorSpacePackage)
    (E : ColorSpaceEvidence C) : ColorSpaceClosed C := by
  exact And.intro E.invertibilityClosed (And.intro E.linearityClosed E.gamutMappingClosed)

end GraphicsImageProcessingCanonicalLaneLean
end HautevilleHouse
