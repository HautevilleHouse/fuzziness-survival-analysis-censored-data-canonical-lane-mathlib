import canonicalLaneMathlib.AdmissibleClass
import FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean.FuzzyHazardBridge

namespace HautevilleHouse
namespace FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean

structure CoxFuzzyRegressionModel where
  betaCoefficients : ℕ → ℝ
  partialLikelihood : Prop
  fuzzyMembershipWeighted : Prop

structure CoxFuzzyRegressionEvidence (C : CoxFuzzyRegressionModel) where
  betaCoefficientsFinite : ∀ i, C.betaCoefficients i ≠ ∞
  partialLikelihoodClosed : C.partialLikelihood
  fuzzyMembershipWeightedClosed : C.fuzzyMembershipWeighted

def CoxFuzzyRegressionClosed (C : CoxFuzzyRegressionModel) : Prop :=
  (∀ i, C.betaCoefficients i ≠ ∞) ∧ C.partialLikelihood ∧ C.fuzzyMembershipWeighted

theorem cox_fuzzy_regression_closed_from_evidence (C : CoxFuzzyRegressionModel) (E : CoxFuzzyRegressionEvidence C) :
    CoxFuzzyRegressionClosed C := by
  exact And.intro E.betaCoefficientsFinite (And.intro E.partialLikelihoodClosed E.fuzzyMembershipWeightedClosed)

end FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean
end HautevilleHouse