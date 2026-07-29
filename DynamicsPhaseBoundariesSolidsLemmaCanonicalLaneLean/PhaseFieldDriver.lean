import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean

structure PhaseFieldDriver where
  phaseField : Type u → Type u
  orderParameter : Type u → Type u
  freeEnergy : Type u → Type u
  evolutionEquation : Prop
  interfaceWidth : ℝ
  drivingForce : Prop
  evolutionEquationTerm : evolutionEquation
  drivingForceTerm : drivingForce

structure PhaseFieldDriverEvidence (D : PhaseFieldDriver) where
  evolutionEquationClosed : D.evolutionEquation
  drivingForceClosed : D.drivingForce

def PhaseFieldDriverClosed (D : PhaseFieldDriver) : Prop :=
  D.evolutionEquation ∧ D.drivingForce

theorem phase_field_driver_closed_from_evidence
    (D : PhaseFieldDriver) (E : PhaseFieldDriverEvidence D) :
    PhaseFieldDriverClosed D := by
  exact And.intro E.evolutionEquationClosed E.drivingForceClosed

end DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean
end HautevilleHouse