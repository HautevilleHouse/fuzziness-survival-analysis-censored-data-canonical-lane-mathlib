import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean

structure CensoredSurvivalRecord where
  observedTime : ℝ
  censoringIndicator : Bool  -- true if observed event, false if censored
  fuzzyMembership : ℝ  -- degree of membership in the fuzzy event "failure"
  covariates : ℕ → ℝ

structure FuzzyCensoringMechanism where
  censoringDistribution : Type
  independentOfFailure : Prop
  randomCensoring : Prop

structure FuzzySurvivalData where
  records : List CensoredSurvivalRecord
  sampleSize : ℕ
  mechanism : FuzzyCensoringMechanism

end FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean
end HautevilleHouse