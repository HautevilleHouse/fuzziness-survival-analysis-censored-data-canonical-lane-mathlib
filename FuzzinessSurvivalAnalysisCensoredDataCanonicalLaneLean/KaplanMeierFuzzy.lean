import canonicalLaneMathlib.AdmissibleClass
import FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean.FuzzinessSurvivalData

namespace HautevilleHouse
namespace FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean

structure KaplanMeierFuzzyEstimator where
  survivalCurve : ℝ → ℝ
  productLimitFormula : Prop
  fuzzyWeighted : Prop

structure KaplanMeierFuzzyEvidence (K : KaplanMeierFuzzyEstimator) where
  survivalAtZero : K.survivalCurve 0 = 1
  productLimitFormulaClosed : K.productLimitFormula
  fuzzyWeightedClosed : K.fuzzyWeighted

def KaplanMeierFuzzyClosed (K : KaplanMeierFuzzyEstimator) : Prop :=
  K.survivalCurve 0 = 1 ∧ K.productLimitFormula ∧ K.fuzzyWeighted

theorem kaplan_meier_fuzzy_closed_from_evidence (K : KaplanMeierFuzzyEstimator) (E : KaplanMeierFuzzyEvidence K) :
    KaplanMeierFuzzyClosed K := by
  exact And.intro E.survivalAtZero (And.intro E.productLimitFormulaClosed E.fuzzyWeightedClosed)

end FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean
end HautevilleHouse