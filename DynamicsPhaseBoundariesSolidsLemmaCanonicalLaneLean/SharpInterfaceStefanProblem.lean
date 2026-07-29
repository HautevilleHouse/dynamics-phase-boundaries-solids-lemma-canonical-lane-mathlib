import HautevilleHouse.DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean.SharpInterfaceAllenCahn

/-!
# Stefan Problem and Sharp Interface Limit
-/

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean

structure StefanProblemPackage {C : CahnHilliardPackage} (A : AllenCahnPackage C) where
  latentHeat : Prop
  stefanCondition : Prop
  heatEquation : Prop
  interfaceVelocity : Prop
  sharpInterfaceLimitConsistent : Prop

structure StefanProblemEvidence {C : CahnHilliardPackage} {A : AllenCahnPackage C} (S : StefanProblemPackage A) where
  latentHeatClosed : S.latentHeat
  stefanConditionClosed : S.stefanCondition
  heatEquationClosed : S.heatEquation
  interfaceVelocityClosed : S.interfaceVelocity
  sharpInterfaceLimitConsistentClosed : S.sharpInterfaceLimitConsistent

def StefanProblemClosed {C : CahnHilliardPackage} {A : AllenCahnPackage C} (S : StefanProblemPackage A) : Prop :=
  S.latentHeat ∧ S.stefanCondition ∧ S.heatEquation ∧ S.interfaceVelocity ∧ S.sharpInterfaceLimitConsistent

theorem stefan_problem_closed_from_evidence {C : CahnHilliardPackage} {A : AllenCahnPackage C} (S : StefanProblemPackage A) (E : StefanProblemEvidence S) : StefanProblemClosed S := by
  exact And.intro E.latentHeatClosed (And.intro E.stefanConditionClosed (And.intro E.heatEquationClosed (And.intro E.interfaceVelocityClosed E.sharpInterfaceLimitConsistentClosed)))

end DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean
end HautevilleHouse