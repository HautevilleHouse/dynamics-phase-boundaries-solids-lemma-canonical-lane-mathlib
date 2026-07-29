import HautevilleHouse.DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean.PhaseFieldCahnHilliard

/-!
# Phase-Field Crystal Density Functional
-/

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean

structure PhaseFieldCrystalPackage (C : CahnHilliardPackage) where
  densityField : Type u
  freeEnergyDensityFunctional : Prop
  periodicOrderParameter : Prop
  elasticInteraction : Prop
  phaseFieldCrystalEquation : Prop

structure PhaseFieldCrystalEvidence {C : CahnHilliardPackage} (P : PhaseFieldCrystalPackage C) where
  densityFieldClosed : P.densityField
  freeEnergyDensityFunctionalClosed : P.freeEnergyDensityFunctional
  periodicOrderParameterClosed : P.periodicOrderParameter
  elasticInteractionClosed : P.elasticInteraction
  phaseFieldCrystalEquationClosed : P.phaseFieldCrystalEquation

def PhaseFieldCrystalClosed {C : CahnHilliardPackage} (P : PhaseFieldCrystalPackage C) : Prop :=
  P.densityField ∧ P.freeEnergyDensityFunctional ∧ P.periodicOrderParameter ∧ P.elasticInteraction ∧ P.phaseFieldCrystalEquation

theorem phase_field_crystal_closed_from_evidence {C : CahnHilliardPackage} (P : PhaseFieldCrystalPackage C) (E : PhaseFieldCrystalEvidence P) : PhaseFieldCrystalClosed P := by
  exact And.intro E.densityFieldClosed (And.intro E.freeEnergyDensityFunctionalClosed (And.intro E.periodicOrderParameterClosed (And.intro E.elasticInteractionClosed E.phaseFieldCrystalEquationClosed)))

end DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean
end HautevilleHouse