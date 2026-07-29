import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean

structure FuzzyEstimatorPackage where
  fuzzyKaplanMeier : Prop
  fuzzyNelsonAalen : Prop
  consistency : Prop
  asymptoticNormality : Prop
  confidenceInterval : Prop

structure FuzzyEstimatorEvidence (E : FuzzyEstimatorPackage) where
  fuzzyKaplanMeierClosed : E.fuzzyKaplanMeier
  fuzzyNelsonAalenClosed : E.fuzzyNelsonAalen
  consistencyClosed : E.consistency
  asymptoticNormalityClosed : E.asymptoticNormality
  confidenceIntervalClosed : E.confidenceInterval

def FuzzyEstimatorClosed (E : FuzzyEstimatorPackage) : Prop :=
  E.fuzzyKaplanMeier ∧ E.fuzzyNelsonAalen ∧
  E.consistency ∧ E.asymptoticNormality ∧ E.confidenceInterval

theorem fuzzy_estimator_closed_from_evidence
    (E : FuzzyEstimatorPackage) (Ev : FuzzyEstimatorEvidence E) :
    FuzzyEstimatorClosed E := by
  exact And.intro Ev.fuzzyKaplanMeierClosed
    (And.intro Ev.fuzzyNelsonAalenClosed
      (And.intro Ev.consistencyClosed
        (And.intro Ev.asymptoticNormalityClosed Ev.confidenceIntervalClosed)))

end FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean
end HautevilleHouse
