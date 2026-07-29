import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsLimitCyclesPeriodicOrbitsCanonicalLaneLean

structure PeriodicOrbitPerturbationPackage where
  baseSystem : Type u
  perturbedSystem : Type u
  periodicOrbit : baseSystem → Prop
  perturbationParameter : ℝ
  orbitalStability : Prop
  persistenceUnderPerturbation : Prop
  orbitalStabilityTerm : orbitalStability
  persistenceTerm : persistenceUnderPerturbation

def PeriodicOrbitPerturbationClosed (P : PeriodicOrbitPerturbationPackage) : Prop :=
  P.orbitalStability ∧ P.persistenceUnderPerturbation

theorem periodic_orbit_perturbation_closed (P : PeriodicOrbitPerturbationPackage)
    : PeriodicOrbitPerturbationClosed P := by
  exact And.intro P.orbitalStabilityTerm P.persistenceTerm

end BifurcationsLimitCyclesPeriodicOrbitsCanonicalLaneLean
end HautevilleHouse