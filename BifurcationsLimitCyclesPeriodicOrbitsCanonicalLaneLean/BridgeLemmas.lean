import canonicalLaneMathlib.BridgeLemmas

namespace HautevilleHouse
namespace BifurcationsLimitCyclesPeriodicOrbitsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BifurcationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BifurcationsLimitCyclesPeriodicOrbitsCanonicalLaneLean
end HautevilleHouse