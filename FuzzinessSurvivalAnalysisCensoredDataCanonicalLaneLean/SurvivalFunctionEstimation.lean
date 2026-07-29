import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean

structure KaplanMeierPackage where
  survivalTime: Type
  censoringDistribution: Prop
  kaplanMeierEstimator: Prop
  consistencyProof: Prop

structure KaplanMeierEvidence (K: KaplanMeierPackage) where
  estimatorDefined: K.kaplanMeierEstimator
  consistencyClosed: K.consistencyProof

def KaplanMeierClosed (K: KaplanMeierPackage) : Prop :=
  K.kaplanMeierEstimator ∧ K.consistencyProof

theorem kaplan_meier_closed_from_evidence
    (K: KaplanMeierPackage) (E: KaplanMeierEvidence K) :
    KaplanMeierClosed K := by
  exact And.intro E.estimatorDefined E.consistencyClosed

end FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean
end HautevilleHouse