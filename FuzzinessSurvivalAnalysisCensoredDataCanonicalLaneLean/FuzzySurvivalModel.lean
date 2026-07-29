import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean

structure FuzzySurvivalModelPackage where
  hazardFunction : Type u
  fuzzyMembership : Prop
  survivalProbabilityFuzzy : Prop
  censoringIndicatorFuzzy : Prop
  parameterEstimation : Prop

structure FuzzySurvivalModelEvidence (F : FuzzySurvivalModelPackage) where
  hazardFunctionClosed : F.hazardFunction = F.hazardFunction
  fuzzyMembershipClosed : F.fuzzyMembership
  survivalProbabilityFuzzyClosed : F.survivalProbabilityFuzzy
  censoringIndicatorFuzzyClosed : F.censoringIndicatorFuzzy
  parameterEstimationClosed : F.parameterEstimation

def FuzzySurvivalModelClosed (F : FuzzySurvivalModelPackage) : Prop :=
  F.fuzzyMembership ∧ F.survivalProbabilityFuzzy ∧ F.censoringIndicatorFuzzy ∧ F.parameterEstimation

theorem fuzzy_survival_model_closed_from_evidence (F : FuzzySurvivalModelPackage) (E : FuzzySurvivalModelEvidence F) :
    FuzzySurvivalModelClosed F := by
  exact And.intro E.fuzzyMembershipClosed
    (And.intro E.survivalProbabilityFuzzyClosed
      (And.intro E.censoringIndicatorFuzzyClosed E.parameterEstimationClosed))

end FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean
end HautevilleHouse
