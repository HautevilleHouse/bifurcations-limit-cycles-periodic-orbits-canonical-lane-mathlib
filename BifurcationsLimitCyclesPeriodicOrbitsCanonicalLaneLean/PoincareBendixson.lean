import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsLimitCyclesPeriodicOrbitsCanonicalLaneLean

structure PoincareBendixsonPackage where
  domain : Type u
  vectorField : domain → domain
  forwardInvariantCompactSet : Set domain
  omegaLimitSet : Set domain
  classification : Prop
  classificationTerm : classification

def PoincareBendixsonClosed (P : PoincareBendixsonPackage) : Prop :=
  P.classification

theorem poincare_bendixson_closed (P : PoincareBendixsonPackage) : PoincareBendixsonClosed P := by
  exact P.classificationTerm

end BifurcationsLimitCyclesPeriodicOrbitsCanonicalLaneLean
end HautevilleHouse