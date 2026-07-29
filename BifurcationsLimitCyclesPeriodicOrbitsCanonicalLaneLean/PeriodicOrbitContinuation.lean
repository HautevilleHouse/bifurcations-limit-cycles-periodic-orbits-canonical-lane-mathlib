import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsLimitCyclesPeriodicOrbitsCanonicalLaneLean

structure PeriodicOrbitContinuationPackage where
  startingPoint : Type u
  continuationMethod : String
  pathFollowed : List (ℝ × Type u)
  turningPoints : Set ℕ
  convergence : Prop

structure PeriodicOrbitContinuationEvidence (P : PeriodicOrbitContinuationPackage) where
  pathFollowedNonempty : P.pathFollowed ≠ []
  convergenceClosed : P.convergence

def PeriodicOrbitContinuationClosed (P : PeriodicOrbitContinuationPackage) : Prop :=
  P.pathFollowed ≠ [] ∧ P.convergence

theorem periodic_orbit_continuation_closed_from_evidence (P : PeriodicOrbitContinuationPackage) (E : PeriodicOrbitContinuationEvidence P) :
    PeriodicOrbitContinuationClosed P := by
  exact And.intro E.pathFollowedNonempty E.convergenceClosed

end BifurcationsLimitCyclesPeriodicOrbitsCanonicalLaneLean
end HautevilleHouse