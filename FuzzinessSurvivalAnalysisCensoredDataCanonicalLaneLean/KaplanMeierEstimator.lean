import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean

structure KaplanMeierEstimatorPackage where
  survivalEstimates : Type u
  fuzzySurvivalCurve : Prop
  censoringAdjusted : Prop
  confidenceBounds : Prop

structure KaplanMeierEstimatorEvidence (K : KaplanMeierEstimatorPackage) where
  survivalEstimatesClosed : K.survivalEstimates = K.survivalEstimates
  fuzzySurvivalCurveClosed : K.fuzzySurvivalCurve
  censoringAdjustedClosed : K.censoringAdjusted
  confidenceBoundsClosed : K.confidenceBounds

def KaplanMeierEstimatorClosed (K : KaplanMeierEstimatorPackage) : Prop :=
  K.fuzzySurvivalCurve ∧ K.censoringAdjusted ∧ K.confidenceBounds

theorem kaplan_meier_estimator_closed_from_evidence (K : KaplanMeierEstimatorPackage) (E : KaplanMeierEstimatorEvidence K) :
    KaplanMeierEstimatorClosed K := by
  exact And.intro E.fuzzySurvivalCurveClosed
    (And.intro E.censoringAdjustedClosed E.confidenceBoundsClosed)

end FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean
end HautevilleHouse
