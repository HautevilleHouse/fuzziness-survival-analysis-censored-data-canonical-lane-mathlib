import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean

structure CensoredSurvivalObject where
  subject: Type
  censoringTime: Type
  failureTime: Type
  observable: (censoringTime × failureTime) -> Prop
  censoringIndicator: Bool

structure AdmissibleClass where
  object: CensoredSurvivalObject
  endpointSatisfied: Prop
  remainderRecorded: Prop
  gateWitness: endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

end FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean
end HautevilleHouse