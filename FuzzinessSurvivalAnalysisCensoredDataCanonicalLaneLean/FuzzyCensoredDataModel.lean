import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean

structure FuzzyCensoredDataModel where
  sampleSpace : Type u
  lifetimeVariable : sampleSpace → Float
  censoringIndicator : sampleSpace → Bool
  membershipFunction : sampleSpace → Float
  fuzzySurvivalFunction : sampleSpace → Float

structure FuzzyCensoredDataEvidence (M : FuzzyCensoredDataModel) where
  membershipNonnegative : ∀ x, M.membershipFunction x ≥ 0
  membershipSummation : ∀ x, M.membershipFunction x ≤ 1
  survivalDefined : ∀ x, M.fuzzySurvivalFunction x ≥ 0

def FuzzyCensoredDataClosed (M : FuzzyCensoredDataModel) : Prop :=
  (∀ x, M.membershipFunction x ≥ 0) ∧ (∀ x, M.membershipFunction x ≤ 1) ∧ (∀ x, M.fuzzySurvivalFunction x ≥ 0)

theorem fuzzy_censored_data_closed_from_evidence (M : FuzzyCensoredDataModel) (E : FuzzyCensoredDataEvidence M) : FuzzyCensoredDataClosed M := by
  exact And.intro E.membershipNonnegative (And.intro E.membershipSummation E.survivalDefined)

end FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean
end HautevilleHouse