import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsLimitCyclesPeriodicOrbitsCanonicalLaneLean

structure LimitCyclePersistencePackage where
  cycle : Type
  perturbationParameter : Type
  persistenceUnderPerturbation : Prop
  hyperbolicity : Prop
  localContinuation : Prop

structure LimitCyclePersistenceEvidence (L : LimitCyclePersistencePackage) where
  persistenceUnderPerturbationClosed : L.persistenceUnderPerturbation
  hyperbolicityClosed : L.hyperbolicity
  localContinuationClosed : L.localContinuation

def LimitCyclePersistenceClosed (L : LimitCyclePersistencePackage) : Prop :=
  L.persistenceUnderPerturbation ∧ L.hyperbolicity ∧ L.localContinuation

theorem limit_cycle_persistence_closed_from_evidence (L : LimitCyclePersistencePackage) (E : LimitCyclePersistenceEvidence L) :
    LimitCyclePersistenceClosed L := by
  exact And.intro E.persistenceUnderPerturbationClosed (And.intro E.hyperbolicityClosed E.localContinuationClosed)

end BifurcationsLimitCyclesPeriodicOrbitsCanonicalLaneLean
end HautevilleHouse