import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FuzzySurvivalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean
end HautevilleHouse
