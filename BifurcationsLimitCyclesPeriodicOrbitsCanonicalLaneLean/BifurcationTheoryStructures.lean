import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsLimitCyclesPeriodicOrbitsCanonicalLaneLean

structure BifurcationTheoryPackage where
  bifurcationParameter : Type u
  normalForm : Type v
  codimension : Nat
  bifurcationDiagram : Prop
  genericityConditions : Prop

structure BifurcationTheoryEvidence (B : BifurcationTheoryPackage) where
  bifurcationDiagramClosed : B.bifurcationDiagram
  genericityConditionsClosed : B.genericityConditions

def BifurcationTheoryClosed (B : BifurcationTheoryPackage) : Prop :=
  B.bifurcationDiagram ∧ B.genericityConditions

theorem bifurcation_theory_closed_from_evidence
    (B : BifurcationTheoryPackage) (E : BifurcationTheoryEvidence B) :
    BifurcationTheoryClosed B := by
  exact And.intro E.bifurcationDiagramClosed E.genericityConditionsClosed

end BifurcationsLimitCyclesPeriodicOrbitsCanonicalLaneLean
end HautevilleHouse
