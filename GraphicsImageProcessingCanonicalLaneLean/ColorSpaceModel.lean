import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsImageProcessingCanonicalLaneLean

structure ColorSpaceModel where
  colorSpace : Type u
  linearEncoding : Prop
  gammaCorrection : Prop
  chromaticAdaptation : Prop
  linearEncodingTerm : linearEncoding
  gammaCorrectionTerm : gammaCorrection
  chromaticAdaptationTerm : chromaticAdaptation

structure ColorSpaceModelEvidence (C : ColorSpaceModel) where
  linearEncodingClosed : C.linearEncoding
  gammaCorrectionClosed : C.gammaCorrection
  chromaticAdaptationClosed : C.chromaticAdaptation

def ColorSpaceModelClosed (C : ColorSpaceModel) : Prop :=
  C.linearEncoding ∧ C.gammaCorrection ∧ C.chromaticAdaptation

theorem color_space_model_closed_from_evidence (C : ColorSpaceModel) (E : ColorSpaceModelEvidence C) :
    ColorSpaceModelClosed C := by
  exact And.intro E.linearEncodingClosed (And.intro E.gammaCorrectionClosed E.chromaticAdaptationClosed)

end GraphicsImageProcessingCanonicalLaneLean
end HautevilleHouse