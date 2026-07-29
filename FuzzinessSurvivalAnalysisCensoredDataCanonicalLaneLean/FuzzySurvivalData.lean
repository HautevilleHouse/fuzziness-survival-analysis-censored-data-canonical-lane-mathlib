import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean

structure FuzzySurvivalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FuzzySurvivalObject where
  space : FuzzySurvivalSpace
  fuzzyMembership : (carrier : Type) → (carrier → ℝ) → Prop
  censoringIndicator : Prop
  survivalFunction : Prop
  hazardFunction : Prop
  conclusion : censorshipValid := sorry

structure FuzzySurvivalAdmittedObject where
  object : FuzzySurvivalObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def FuzzySurvivalWitnessClosed (O : FuzzySurvivalAdmittedObject) : Prop :=
  O.object.conclusion

end FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean
end HautevilleHouse
