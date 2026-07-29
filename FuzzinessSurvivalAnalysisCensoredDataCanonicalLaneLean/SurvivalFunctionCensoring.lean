import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean

structure SurvivalFunctionPackage where
  time : Type u
  survivalFunction : time → ℝ
  censoringIndicator : time → Bool
  riskSet : Type v

def SurvivalFunctionClosed (S : SurvivalFunctionPackage) : Prop :=
  ∀ t : S.time, S.survivalFunction t ≥ 0 ∧ S.survivalFunction t ≤ 1

theorem survival_function_range (S : SurvivalFunctionPackage) : SurvivalFunctionClosed S := by
  intro t
  constructor
  · linarith
  · linarith

end FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean
end HautevilleHouse