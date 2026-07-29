import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsImageProcessingCanonicalLaneLean

structure PixelModel where
  point : Type u
  colorSpace : Type v
  spatialLattice : point → point → Prop
  localNeighborhood : point → Set point
  continuity : Prop
  continuityTerm : continuity

structure PixelModelEvidence (P : PixelModel) where
  continuityClosed : P.continuity

def PixelModelClosed (P : PixelModel) : Prop :=
  P.continuity

theorem pixel_model_closed_from_evidence (P : PixelModel) (E : PixelModelEvidence P) :
    PixelModelClosed P := by
  exact E.continuityClosed

end GraphicsImageProcessingCanonicalLaneLean
end HautevilleHouse