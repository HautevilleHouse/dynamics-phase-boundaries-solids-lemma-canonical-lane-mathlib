import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean

structure PhaseFieldEvolutionPackage where
  orderParameter : Type u
  freeEnergyFunctional : Type v
  evolutionEquation : Prop
  initialCondition : Prop
  boundaryConditions : Prop
  smoothEvolution : Prop
  gradientFlowStructure : Prop

structure PhaseFieldEvolutionEvidence (P : PhaseFieldEvolutionPackage) where
  evolutionEquationClosed : P.evolutionEquation
  initialConditionClosed : P.initialCondition
  boundaryConditionsClosed : P.boundaryConditions
  smoothEvolutionClosed : P.smoothEvolution
  gradientFlowStructureClosed : P.gradientFlowStructure

def PhaseFieldEvolutionClosed (P : PhaseFieldEvolutionPackage) : Prop :=
  P.evolutionEquation ∧ P.initialCondition ∧ P.boundaryConditions ∧ P.smoothEvolution ∧ P.gradientFlowStructure

theorem phase_field_evolution_closed_from_evidence (P : PhaseFieldEvolutionPackage) (E : PhaseFieldEvolutionEvidence P) : PhaseFieldEvolutionClosed P := by
  exact And.intro E.evolutionEquationClosed (And.intro E.initialConditionClosed (And.intro E.boundaryConditionsClosed (And.intro E.smoothEvolutionClosed E.gradientFlowStructureClosed)))

end DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean
end HautevilleHouse