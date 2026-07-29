import HautevilleHouse.DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean

structure PhaseFieldModel where
  orderParameter : Type u
  doubleWellPotential : orderParameter → ℝ
  gradientEnergy : orderParameter → ℝ
  timeEvolving : orderParameter → orderParameter
  allenCahnEquation : Prop
  phaseBoundaryWidth : ℝ
  mobility : ℝ
  freeEnergyFunctional : Type v
  freeEnergyFunctionalDefined : Prop
  freeEnergyFunctionalDefinedTerm : freeEnergyFunctionalDefined
  orderParameterSpace : TopologicalSpace orderParameter

structure PhaseFieldEvidence (M : PhaseFieldModel) where
  allenCahnEquationClosed : M.allenCahnEquation
  freeEnergyFunctionalDefinedClosed : M.freeEnergyFunctionalDefined

def PhaseFieldModelClosed (M : PhaseFieldModel) : Prop :=
  M.allenCahnEquation ∧ M.freeEnergyFunctionalDefined

theorem phase_field_model_closed_from_evidence (M : PhaseFieldModel)
    (E : PhaseFieldEvidence M) : PhaseFieldModelClosed M := by
  exact And.intro E.allenCahnEquationClosed E.freeEnergyFunctionalDefinedClosed

end DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean
end HautevilleHouse