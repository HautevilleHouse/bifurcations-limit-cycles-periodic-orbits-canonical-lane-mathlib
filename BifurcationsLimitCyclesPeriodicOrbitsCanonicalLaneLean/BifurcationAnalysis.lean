import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsLimitCyclesPeriodicOrbitsCanonicalLaneLean

structure BifurcationAnalysisPackage where
  bifurcationParameter : Type u
  criticalPoints : Prop
  hopfCondition : Prop
  normalFormComputed : Prop
  stabilityAnalysis : Prop

structure BifurcationAnalysisEvidence (B : BifurcationAnalysisPackage) where
  criticalPointsClosed : B.criticalPoints
  hopfConditionClosed : B.hopfCondition
  normalFormComputedClosed : B.normalFormComputed
  stabilityAnalysisClosed : B.stabilityAnalysis

def BifurcationAnalysisClosed (B : BifurcationAnalysisPackage) : Prop :=
  B.criticalPoints ∧ B.hopfCondition ∧ B.normalFormComputed ∧ B.stabilityAnalysis

theorem bifurcation_analysis_closed_from_evidence
    (B : BifurcationAnalysisPackage) (E : BifurcationAnalysisEvidence B) :
    BifurcationAnalysisClosed B := by
  exact And.intro E.criticalPointsClosed
    (And.intro E.hopfConditionClosed
      (And.intro E.normalFormComputedClosed E.stabilityAnalysisClosed))

end BifurcationsLimitCyclesPeriodicOrbitsCanonicalLaneLean
end HautevilleHouse
