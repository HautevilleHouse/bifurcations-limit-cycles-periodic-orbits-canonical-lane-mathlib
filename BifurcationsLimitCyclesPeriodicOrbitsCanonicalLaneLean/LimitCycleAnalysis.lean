import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsLimitCyclesPeriodicOrbitsCanonicalLaneLean

structure LimitCycleAnalysisPackage {P : BifurcationAnalysisPackage} where
  limitCycleSet : Type u
  poincareMapDefined : Prop
  orbitStabilityClassified : Prop
  bifurcationDiagram : Prop

structure LimitCycleAnalysisEvidence {P : BifurcationAnalysisPackage}
    (L : LimitCycleAnalysisPackage P) where
  limitCycleSetClosed : L.limitCycleSet
  poincareMapDefinedClosed : L.poincareMapDefined
  orbitStabilityClassifiedClosed : L.orbitStabilityClassified
  bifurcationDiagramClosed : L.bifurcationDiagram

def LimitCycleAnalysisClosed {P : BifurcationAnalysisPackage}
    (L : LimitCycleAnalysisPackage P) : Prop :=
  L.limitCycleSet ∧ L.poincareMapDefined ∧ L.orbitStabilityClassified ∧ L.bifurcationDiagram

theorem limit_cycle_analysis_closed_from_evidence
    {P : BifurcationAnalysisPackage} (L : LimitCycleAnalysisPackage P)
    (E : LimitCycleAnalysisEvidence L) : LimitCycleAnalysisClosed L := by
  exact And.intro E.limitCycleSetClosed
    (And.intro E.poincareMapDefinedClosed
      (And.intro E.orbitStabilityClassifiedClosed E.bifurcationDiagramClosed))

end BifurcationsLimitCyclesPeriodicOrbitsCanonicalLaneLean
end HautevilleHouse
