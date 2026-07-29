import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsLimitCyclesPeriodicOrbitsCanonicalLaneLean

structure HopfBifurcationPackage where
  parameterSpace : Type u
  equilibriumCurve : Type v
  eigenvalueCrossing : Prop
  periodicOrbitBranch : Prop
  nondegeneracyCondition : Prop

structure HopfBifurcationEvidence (H : HopfBifurcationPackage) where
  eigenvalueCrossingClosed : H.eigenvalueCrossing
  periodicOrbitBranchClosed : H.periodicOrbitBranch
  nondegeneracyConditionClosed : H.nondegeneracyCondition

def HopfBifurcationClosed (H : HopfBifurcationPackage) : Prop :=
  H.eigenvalueCrossing ∧ H.periodicOrbitBranch ∧ H.nondegeneracyCondition

theorem hopf_bifurcation_closed_from_evidence (H : HopfBifurcationPackage) (E : HopfBifurcationEvidence H) :
    HopfBifurcationClosed H := by
  exact And.intro E.eigenvalueCrossingClosed (And.intro E.periodicOrbitBranchClosed E.nondegeneracyConditionClosed)

end BifurcationsLimitCyclesPeriodicOrbitsCanonicalLaneLean
end HautevilleHouse