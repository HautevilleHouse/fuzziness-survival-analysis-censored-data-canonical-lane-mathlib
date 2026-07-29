import canonicalLaneMathlib.AdmissibleClass
import FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean.CensoringMechanisms
import FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean.FuzzySurvivalModel
import FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean.KaplanMeierEstimator

namespace HautevilleHouse
namespace FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean

def ConstrainedFuzzySurvivalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_fuzzy_survival_endgame (A : AdmissibleClass) :
    ConstrainedFuzzySurvivalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean
end HautevilleHouse
