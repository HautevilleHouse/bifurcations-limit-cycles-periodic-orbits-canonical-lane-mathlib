import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsLimitCyclesPeriodicOrbitsCanonicalLaneLean

structure BifurcationNormalFormsPackage where
  codimension : ℕ
  bifurcationType : String
  normalForm : String
  unfoldingParameters : List ℝ
  topologicalEquivalence : Prop

structure BifurcationNormalFormsEvidence (B : BifurcationNormalFormsPackage) where
  normalFormDerived : B.normalForm ≠ ""
  topologicalEquivalenceClosed : B.topologicalEquivalence

def BifurcationNormalFormsClosed (B : BifurcationNormalFormsPackage) : Prop :=
  B.normalForm ≠ "" ∧ B.topologicalEquivalence

theorem bifurcation_normal_forms_closed_from_evidence (B : BifurcationNormalFormsPackage) (E : BifurcationNormalFormsEvidence B) :
    BifurcationNormalFormsClosed B := by
  exact And.intro E.normalFormDerived E.topologicalEquivalenceClosed

end BifurcationsLimitCyclesPeriodicOrbitsCanonicalLaneLean
end HautevilleHouse