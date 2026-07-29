import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean

structure CensoringMechanismsPackage where
  rightCensoring : Prop
  leftCensoring : Prop
  intervalCensoring : Prop
  informativeCensoring : Prop
  noninformativeCensoring : Prop

structure CensoringMechanismsEvidence (C : CensoringMechanismsPackage) where
  rightCensoringClosed : C.rightCensoring
  leftCensoringClosed : C.leftCensoring
  intervalCensoringClosed : C.intervalCensoring
  informativeCensoringClosed : C.informativeCensoring
  noninformativeCensoringClosed : C.noninformativeCensoring

def CensoringMechanismsClosed (C : CensoringMechanismsPackage) : Prop :=
  C.rightCensoring ∧ C.leftCensoring ∧ C.intervalCensoring ∧ C.informativeCensoring ∧ C.noninformativeCensoring

theorem censoring_mechanisms_closed_from_evidence (C : CensoringMechanismsPackage) (E : CensoringMechanismsEvidence C) :
    CensoringMechanismsClosed C := by
  exact And.intro E.rightCensoringClosed
    (And.intro E.leftCensoringClosed
      (And.intro E.intervalCensoringClosed
        (And.intro E.informativeCensoringClosed E.noninformativeCensoringClosed)))

end FuzzinessSurvivalAnalysisCensoredDataCanonicalLaneLean
end HautevilleHouse
