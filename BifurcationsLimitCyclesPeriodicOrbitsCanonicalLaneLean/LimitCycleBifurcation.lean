import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsLimitCyclesPeriodicOrbitsCanonicalLaneLean

structure LimitCycleBifurcationPackage where
  systemType : String
  parameterSpace : Type u
  bifurcationPoint : parameterSpace
  limitCycleExists : Prop
  stability : Prop
  normalForm : Prop
  normalFormTerm : normalForm
  stabilityTerm : stability
  limitCycleExistsTerm : limitCycleExists

structure LimitCycleBifurcationEvidence (P : LimitCycleBifurcationPackage) where
  bifurcationPointClosed : Prop
  limitCycleExistsClosed : P.limitCycleExistsTerm
  stabilityClosed : P.stabilityTerm
  normalFormClosed : P.normalFormTerm

def LimitCycleBifurcationClosed (P : LimitCycleBifurcationPackage) : Prop :=
  P.limitCycleExists ∧ P.stability ∧ P.normalForm

theorem limit_cycle_bifurcation_closed_from_evidence (P : LimitCycleBifurcationPackage)
    (E : LimitCycleBifurcationEvidence P) : LimitCycleBifurcationClosed P := by
  exact And.intro E.limitCycleExistsClosed (And.intro E.stabilityClosed E.normalFormClosed)

end BifurcationsLimitCyclesPeriodicOrbitsCanonicalLaneLean
end HautevilleHouse