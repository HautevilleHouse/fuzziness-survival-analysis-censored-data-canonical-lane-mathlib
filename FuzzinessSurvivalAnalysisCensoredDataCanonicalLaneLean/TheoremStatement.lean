import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean

def sourceRepository : String :=
  "FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean"

structure FSCDAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  fuzzinessModel : Prop
  survivalData : Prop
  censoringMechanism : Prop
  admissible : Prop
  conclusion : admissible

def FSCDWitnessClosed (O : FSCDAdmittedObject) : Prop :=
  O.admissible

end FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean
end HautevilleHouse