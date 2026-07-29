import canonicalLaneMathlib.AdmissibleClass
import FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean.FuzzinessSurvivalData

namespace HautevilleHouse
namespace FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean

structure FuzzyHazardFunction where
  baselineHazard : ℝ → ℝ
  fuzzyCovariateEffect : ℕ → ℝ
  proportionalityAssumption : Prop

structure FuzzyHazardEvidence (H : FuzzyHazardFunction) where
  baselineHazardDefined : H.baselineHazard 0 = 0
  fuzzyCovariateEffectMonotone : ∀ i, H.fuzzyCovariateEffect i ≥ 0
  proportionalityAssumptionClosed : H.proportionalityAssumption

def FuzzyHazardClosed (H : FuzzyHazardFunction) : Prop :=
  H.baselineHazard 0 = 0 ∧ (∀ i, H.fuzzyCovariateEffect i ≥ 0) ∧ H.proportionalityAssumption

theorem fuzzy_hazard_closed_from_evidence (H : FuzzyHazardFunction) (E : FuzzyHazardEvidence H) :
    FuzzyHazardClosed H := by
  exact And.intro E.baselineHazardDefined (And.intro E.fuzzyCovariateEffectMonotone E.proportionalityAssumptionClosed)

end FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean
end HautevilleHouse