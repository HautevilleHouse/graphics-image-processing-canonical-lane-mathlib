import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsImageProcessingCanonicalLaneLean

structure ImageCompressionAlgorithmPackage where
  transformCoding : Type u
  quantization : Prop
  entropyCoding : Prop
  fidelityCriterion : Prop
  compressionRatio : Prop

structure ImageCompressionAlgorithmEvidence (C : ImageCompressionAlgorithmPackage) where
  quantizationClosed : C.quantization
  entropyCodingClosed : C.entropyCoding
  fidelityCriterionClosed : C.fidelityCriterion
  compressionRatioClosed : C.compressionRatio

def ImageCompressionAlgorithmClosed (C : ImageCompressionAlgorithmPackage) : Prop :=
  C.quantization ∧ C.entropyCoding ∧ C.fidelityCriterion ∧ C.compressionRatio

theorem image_compression_algorithm_closed_from_evidence (C : ImageCompressionAlgorithmPackage) (E : ImageCompressionAlgorithmEvidence C) :
    ImageCompressionAlgorithmClosed C := by
  exact And.intro E.quantizationClosed (And.intro E.entropyCodingClosed (And.intro E.fidelityCriterionClosed E.compressionRatioClosed))

end GraphicsImageProcessingCanonicalLaneLean
end HautevilleHouse