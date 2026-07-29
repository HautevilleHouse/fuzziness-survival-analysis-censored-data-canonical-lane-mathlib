import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean

structure FuzzySurvivalFunctionPackage where
  survivalFunction : Float → Float
  cumulativeHazard : Float → Float
  hazardRate : Float → Float
  basicProperties : Prop

structure FuzzySurvivalFunctionEvidence (P : FuzzySurvivalFunctionPackage) where
  survivalDecreasing : P.survivalFunction 1 ≥ 0 ∧ P.survivalFunction 0 ≤ 1
  cumulativeHazardMonotonic : ∀ t1 t2, t1 ≤ t2 → P.cumulativeHazard t1 ≤ P.cumulativeHazard t2

def FuzzySurvivalFunctionClosed (P : FuzzySurvivalFunctionPackage) : Prop :=
  P.basicProperties ∧ (∃ s : Float → Float, P.survivalFunction = s)

theorem fuzzy_survival_function_closed_from_evidence (P : FuzzySurvivalFunctionPackage) (E : FuzzySurvivalFunctionEvidence P) : FuzzySurvivalFunctionClosed P := by
  exact And.intro P.basicProperties ⟨P.survivalFunction, rfl⟩

end FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean
end HautevilleHouse