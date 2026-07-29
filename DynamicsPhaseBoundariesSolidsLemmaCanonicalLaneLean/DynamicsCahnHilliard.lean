import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean

structure CahnHilliardDynamicsPackage where
  spatialDomain : Type u
  topology : TopologicalSpace spatialDomain
  concentrationField : ℝ → spatialDomain → ℝ
  mobility : ℝ
  freeEnergyFunctional : (spatialDomain → ℝ) → ℝ
  cahnHilliardEquation : Prop
  boundaryConditions : Prop
  energyDissipation : Prop
  cahnHilliardEquationTerm : cahnHilliardEquation
  boundaryConditionsTerm : boundaryConditions
  energyDissipationTerm : energyDissipation

structure CahnHilliardDynamicsEvidence (C : CahnHilliardDynamicsPackage) where
  cahnHilliardEquationClosed : C.cahnHilliardEquation
  boundaryConditionsClosed : C.boundaryConditions
  energyDissipationClosed : C.energyDissipation

def CahnHilliardDynamicsClosed (C : CahnHilliardDynamicsPackage) : Prop :=
  C.cahnHilliardEquation ∧ C.boundaryConditions ∧ C.energyDissipation

theorem cahn_hilliard_dynamics_closed_from_evidence (C : CahnHilliardDynamicsPackage) (E : CahnHilliardDynamicsEvidence C) : CahnHilliardDynamicsClosed C :=
  And.intro E.cahnHilliardEquationClosed (And.intro E.boundaryConditionsClosed E.energyDissipationClosed)

end DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean
end HautevilleHouse