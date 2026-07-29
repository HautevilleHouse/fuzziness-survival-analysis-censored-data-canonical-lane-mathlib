import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean

structure FuzzyMembershipFunction where
  universe: Type
  membershipDegree: universe → ℝ
  normalConsistency: Prop
  convexFuzzySet: Prop

structure FuzzyMembershipEvidence (F: FuzzyMembershipFunction) where
  degreeDefined: ∀ x, F.membershipDegree x ∈ Set.Icc (0:ℝ) 1
  normalClosed: F.normalConsistency
  convexClosed: F.convexFuzzySet

def FuzzyMembershipClosed (F: FuzzyMembershipFunction) : Prop :=
  (∀ x, F.membershipDegree x ∈ Set.Icc (0:ℝ) 1) ∧
  F.normalConsistency ∧ F.convexFuzzySet

theorem fuzzy_membership_closed_from_evidence
    (F: FuzzyMembershipFunction) (E: FuzzyMembershipEvidence F) :
    FuzzyMembershipClosed F := by
  exact And.intro E.degreeDefined
    (And.intro E.normalClosed E.convexClosed)

end FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean
end HautevilleHouse