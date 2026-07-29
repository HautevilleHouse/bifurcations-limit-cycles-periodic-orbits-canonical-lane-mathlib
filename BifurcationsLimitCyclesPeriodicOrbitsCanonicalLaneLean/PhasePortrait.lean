import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsLimitCyclesPeriodicOrbitsCanonicalLaneLean

structure PhasePortraitPackage where
  manifold : Type u
  vectorField : Type v
  equilibriumPoints : Set (Type u)
  periodicOrbits : Set (Type u)
  stabilityClassified : Prop
  bifurcationDetected : Prop

structure PhasePortraitEvidence (P : PhasePortraitPackage) where
  stabilityClassifiedClosed : P.stabilityClassified
  bifurcationDetectedClosed : P.bifurcationDetected

def PhasePortraitClosed (P : PhasePortraitPackage) : Prop :=
  P.stabilityClassified ∧ P.bifurcationDetected

theorem phase_portrait_closed_from_evidence (P : PhasePortraitPackage) (E : PhasePortraitEvidence P) :
    PhasePortraitClosed P := by
  exact And.intro E.stabilityClassifiedClosed E.bifurcationDetectedClosed

end BifurcationsLimitCyclesPeriodicOrbitsCanonicalLaneLean
end HautevilleHouse