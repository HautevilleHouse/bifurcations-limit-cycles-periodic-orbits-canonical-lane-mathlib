import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsLimitCyclesPeriodicOrbitsCanonicalLaneLean

structure LimitCycleStabilityPackage where
  periodicOrbit : Type u
  floquetMultipliers : List ℂ
  stabilityType : String
  structurallyStable : Prop

structure LimitCycleStabilityEvidence (L : LimitCycleStabilityPackage) where
  stabilityTypeClosed : L.stabilityType = "stable" ∨ L.stabilityType = "unstable"
  structurallyStableClosed : L.structurallyStable

def LimitCycleStabilityClosed (L : LimitCycleStabilityPackage) : Prop :=
  (L.stabilityType = "stable" ∨ L.stabilityType = "unstable") ∧ L.structurallyStable

theorem limit_cycle_stability_closed_from_evidence (L : LimitCycleStabilityPackage) (E : LimitCycleStabilityEvidence L) :
    LimitCycleStabilityClosed L := by
  exact And.intro E.stabilityTypeClosed E.structurallyStableClosed

end BifurcationsLimitCyclesPeriodicOrbitsCanonicalLaneLean
end HautevilleHouse