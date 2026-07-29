import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsLimitCyclesPeriodicOrbitsCanonicalLaneLean

structure PeriodicOrbitExistenceData where
  system : Type
  dimension : Nat
  vectorField : system → system
  candidateOrbit : Set system
  isPeriodic : Prop
  existsLimitCycle : Prop

structure PeriodicOrbitExistenceEvidence (P : PeriodicOrbitExistenceData) where
  isPeriodicClosed : P.isPeriodic
  existsLimitCycleClosed : P.existsLimitCycle

def PeriodicOrbitExistenceClosed (P : PeriodicOrbitExistenceData) : Prop :=
  P.isPeriodic ∧ P.existsLimitCycle

theorem periodic_orbit_existence_closed_from_evidence
    (P : PeriodicOrbitExistenceData) (E : PeriodicOrbitExistenceEvidence P) :
    PeriodicOrbitExistenceClosed P := by
  exact And.intro E.isPeriodicClosed E.existsLimitCycleClosed

end BifurcationsLimitCyclesPeriodicOrbitsCanonicalLaneLean
end HautevilleHouse