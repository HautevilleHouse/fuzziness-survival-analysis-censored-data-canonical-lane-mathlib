import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.gateWitness.elim (fun h => h) (fun h => False.elim ?_)
  sorry

end FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean
end HautevilleHouse