import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsLimitCyclesPeriodicOrbitsCanonicalLaneLean

structure PoincareMapPackage where
  sectionManifold : Type u
  returnMap : Type v
  fixedPoints : Set (Type u)
  jacobian : Type w
  hyperbolicity : Prop

structure PoincareMapEvidence (P : PoincareMapPackage) where
  fixedPointsClosed : P.fixedPoints
  hyperbolicityClosed : P.hyperbolicity

def PoincareMapClosed (P : PoincareMapPackage) : Prop :=
  P.hyperbolicity

theorem poincare_map_closed_from_evidence (P : PoincareMapPackage) (E : PoincareMapEvidence P) :
    PoincareMapClosed P := by
  exact E.hyperbolicityClosed

end BifurcationsLimitCyclesPeriodicOrbitsCanonicalLaneLean
end HautevilleHouse