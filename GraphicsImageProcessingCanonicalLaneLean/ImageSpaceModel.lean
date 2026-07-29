import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsImageProcessingCanonicalLaneLean

structure ImageSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GraphicsAdmittedObject where
  space : ImageSpace
  digitalImage : Prop
  pixelsDefined : Prop
  outputModel : Type
  outputTopology : TopologicalSpace outputModel
  imageToOutput : Prop
  conclusion : imageToOutput

structure GraphicsEndgameState where
  object : GraphicsAdmittedObject

def GraphicsWitnessClosed (O : GraphicsAdmittedObject) : Prop :=
  O.imageToOutput

end GraphicsImageProcessingCanonicalLaneLean
end HautevilleHouse
