import canonicalLaneMathlib.AdmissibleClass
import BifurcationsLimitCyclesPeriodicOrbitsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsLimitCyclesPeriodicOrbitsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  bifurcationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedBifurcationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bifurcation_endgame (A : AdmissibleClass) :
    ConstrainedBifurcationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BifurcationsLimitCyclesPeriodicOrbitsCanonicalLaneLean
end HautevilleHouse
