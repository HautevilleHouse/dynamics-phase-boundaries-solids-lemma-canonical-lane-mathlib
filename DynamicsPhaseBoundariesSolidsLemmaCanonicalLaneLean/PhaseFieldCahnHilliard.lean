import HautevilleHouse.DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean.AdmissibleClass

/-!
# Phase-Field Cahn-Hilliard Model
-/

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean

structure CahnHilliardPackage where
  domain : Type u
  orderParameter : Type v
  freeEnergyFunctional : Type w
  cahnHilliardEquation : Prop
  chemicalPotential : Prop
  gradientEnergyTerm : Prop
  doubleWellPotential : Prop
  mobilityConstant : Prop

structure CahnHilliardEvidence (C : CahnHilliardPackage) where
  cahnHilliardEquationClosed : C.cahnHilliardEquation
  chemicalPotentialClosed : C.chemicalPotential
  gradientEnergyTermClosed : C.gradientEnergyTerm
  doubleWellPotentialClosed : C.doubleWellPotential
  mobilityConstantClosed : C.mobilityConstant

def CahnHilliardClosed (C : CahnHilliardPackage) : Prop :=
  C.cahnHilliardEquation ∧ C.chemicalPotential ∧ C.gradientEnergyTerm ∧ C.doubleWellPotential ∧ C.mobilityConstant

theorem cahn_hilliard_closed_from_evidence (C : CahnHilliardPackage) (E : CahnHilliardEvidence C) : CahnHilliardClosed C := by
  exact And.intro E.cahnHilliardEquationClosed (And.intro E.chemicalPotentialClosed (And.intro E.gradientEnergyTermClosed (And.intro E.doubleWellPotentialClosed E.mobilityConstantClosed)))

end DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean
end HautevilleHouse