import HautevilleHouse.DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean.SharpInterfaceStefanProblem

/-!
# Mullins-Sekerka Instability
-/

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean

structure MullinsSekerkaPackage {C : CahnHilliardPackage} {A : AllenCahnPackage C} (S : StefanProblemPackage A) where
  perturbationAnalysis : Prop
  dispersionRelation : Prop
  criticalWavenumber : Prop
  instabilityThreshold : Prop
  morphologicalInstability : Prop

structure MullinsSekerkaEvidence {C : CahnHilliardPackage} {A : AllenCahnPackage C} {S : StefanProblemPackage A} (M : MullinsSekerkaPackage S) where
  perturbationAnalysisClosed : M.perturbationAnalysis
  dispersionRelationClosed : M.dispersionRelation
  criticalWavenumberClosed : M.criticalWavenumber
  instabilityThresholdClosed : M.instabilityThreshold
  morphologicalInstabilityClosed : M.morphologicalInstability

def MullinsSekerkaClosed {C : CahnHilliardPackage} {A : AllenCahnPackage C} {S : StefanProblemPackage A} (M : MullinsSekerkaPackage S) : Prop :=
  M.perturbationAnalysis ∧ M.dispersionRelation ∧ M.criticalWavenumber ∧ M.instabilityThreshold ∧ M.morphologicalInstability

theorem mullins_sekerka_closed_from_evidence {C : CahnHilliardPackage} {A : AllenCahnPackage C} {S : StefanProblemPackage A} (M : MullinsSekerkaPackage S) (E : MullinsSekerkaEvidence M) : MullinsSekerkaClosed M := by
  exact And.intro E.perturbationAnalysisClosed (And.intro E.dispersionRelationClosed (And.intro E.criticalWavenumberClosed (And.intro E.instabilityThresholdClosed E.morphologicalInstabilityClosed)))

end DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean
end HautevilleHouse