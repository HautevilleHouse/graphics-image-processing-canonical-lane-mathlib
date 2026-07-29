import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsImageProcessingCanonicalLaneLean

structure FilterBankPackage where
  kernelSet : Type u
  stride : Nat × Nat
  paddingPolicy : Prop
  boundaryCondition : Prop
  kernelNormalization : Prop
  finiteSupport : Prop

structure FilterBankEvidence (F : FilterBankPackage) where
  paddingPolicyClosed : F.paddingPolicy
  boundaryConditionClosed : F.boundaryCondition
  kernelNormalizationClosed : F.kernelNormalization
  finiteSupportClosed : F.finiteSupport

def FilterBankClosed (F : FilterBankPackage) : Prop := F.paddingPolicy ∧ F.boundaryCondition ∧ F.kernelNormalization ∧ F.finiteSupport

theorem filter_bank_closed_from_evidence (F : FilterBankPackage) (E : FilterBankEvidence F) : FilterBankClosed F := by
  exact And.intro E.paddingPolicyClosed (And.intro E.boundaryConditionClosed (And.intro E.kernelNormalizationClosed E.finiteSupportClosed))

end GraphicsImageProcessingCanonicalLaneLean
end HautevilleHouse
