import HautevilleHouse.DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean.SharpInterfaceLimit

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean

structure MicrostructureEvolution {M : PhaseFieldModel}
    {L : SharpInterfaceLimit M} where
  grainBoundaryNetwork : Type u
  grainGrowthEquation : Prop
  recrystallizationNucleation : Prop
  coarseningRate : ℝ
  grainGrowthEquationTerm : grainGrowthEquation
  recrystallizationNucleationTerm : recrystallizationNucleation
  coarseningRateParameterDefined : coarseningRate > 0

structure MicrostructureEvidence {M : PhaseFieldModel}
    {L : SharpInterfaceLimit M}
    (E : MicrostructureEvolution M L) where
  grainGrowthEquationClosed : E.grainGrowthEquation
  recrystallizationNucleationClosed : E.recrystallizationNucleation

def MicrostructureEvolutionClosed {M : PhaseFieldModel}
    {L : SharpInterfaceLimit M}
    (E : MicrostructureEvolution M L) : Prop :=
  E.grainGrowthEquation ∧ E.recrystallizationNucleation

theorem microstructure_evolution_closed_from_evidence
    {M : PhaseFieldModel} {L : SharpInterfaceLimit M}
    (E : MicrostructureEvolution M L)
    (Ev : MicrostructureEvidence E) : MicrostructureEvolutionClosed E := by
  exact And.intro Ev.grainGrowthEquationClosed Ev.recrystallizationNucleationClosed

end DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean
end HautevilleHouse