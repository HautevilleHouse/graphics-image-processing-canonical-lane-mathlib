import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsImageProcessingCanonicalLaneLean

structure TextureSynthesisPackage where
  exemplarTexture : Type u
  synthesisAlgorithm : Type v
  synthesizedTexture : Type w
  stationarityAssumption : Prop
  nonParametricSampling : Prop
  multiScaleConsistency : Prop
  visualPlausibility : Prop

structure TextureSynthesisEvidence (T : TextureSynthesisPackage) where
  stationarityAssumptionClosed : T.stationarityAssumption
  nonParametricSamplingClosed : T.nonParametricSampling
  multiScaleConsistencyClosed : T.multiScaleConsistency
  visualPlausibilityClosed : T.visualPlausibility

def TextureSynthesisClosed (T : TextureSynthesisPackage) : Prop :=
  T.stationarityAssumption ∧ T.nonParametricSampling ∧ T.multiScaleConsistency ∧ T.visualPlausibility

theorem texture_synthesis_closed_from_evidence (T : TextureSynthesisPackage) (Ev : TextureSynthesisEvidence T) : TextureSynthesisClosed T := by
  exact And.intro Ev.stationarityAssumptionClosed (And.intro Ev.nonParametricSamplingClosed (And.intro Ev.multiScaleConsistencyClosed Ev.visualPlausibilityClosed))

end GraphicsImageProcessingCanonicalLaneLean
end HautevilleHouse