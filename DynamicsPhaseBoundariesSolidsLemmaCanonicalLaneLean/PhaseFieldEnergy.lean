import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean

structure PhaseFieldEnergyPackage where
  orderParameter : Type u
  freeEnergyFunctional : Type v
  doubleWellPotential : Prop
  gradientEnergy : Prop
  elasticEnergy : Prop
  interfaceEnergy : Prop

structure PhaseFieldEnergyEvidence (P : PhaseFieldEnergyPackage) where
  doubleWellPotentialClosed : P.doubleWellPotential
  gradientEnergyClosed : P.gradientEnergy
  elasticEnergyClosed : P.elasticEnergy
  interfaceEnergyClosed : P.interfaceEnergy

def PhaseFieldEnergyClosed (P : PhaseFieldEnergyPackage) : Prop :=
  P.doubleWellPotential ∧ P.gradientEnergy ∧ P.elasticEnergy ∧ P.interfaceEnergy

theorem phase_field_energy_closed_from_evidence
    (P : PhaseFieldEnergyPackage) (E : PhaseFieldEnergyEvidence P) :
    PhaseFieldEnergyClosed P := by
  exact And.intro E.doubleWellPotentialClosed
    (And.intro E.gradientEnergyClosed
      (And.intro E.elasticEnergyClosed E.interfaceEnergyClosed))

end DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean
end HautevilleHouse
