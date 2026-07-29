import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean

structure CoxProportionalHazardsModel where
  baselineHazard : Float → Float
  covariates : List Float
  coefficientVector : List Float
  partialLikelihood : Prop

structure CoxProportionalHazardsEvidence (M : CoxProportionalHazardsModel) where
  baselinePositive : ∀ t, M.baselineHazard t > 0
  coefficientsReal : ∀ c ∈ M.coefficientVector, c ∈ ℝ
  likelihoodFinite : M.partialLikelihood

def CoxProportionalHazardsClosed (M : CoxProportionalHazardsModel) : Prop :=
  (∀ t, M.baselineHazard t > 0) ∧ (∀ c ∈ M.coefficientVector, c ∈ ℝ) ∧ M.partialLikelihood

theorem cox_proportional_hazards_closed_from_evidence (M : CoxProportionalHazardsModel) (E : CoxProportionalHazardsEvidence M) : CoxProportionalHazardsClosed M := by
  exact And.intro E.baselinePositive (And.intro E.coefficientsReal E.likelihoodFinite)

end FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean
end HautevilleHouse