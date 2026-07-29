import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean

structure ElasticDrivingForce where
  elasticEnergy : Type u → Type u
  misfitStrain : Type u → Type u
  stressField : Type u → Type u
  configurationalForce : Prop
  energyMomentumTensor : Prop
  configurationalForceTerm : configurationalForce
  energyMomentumTensorTerm : energyMomentumTensor

structure ElasticDrivingForceEvidence (E : ElasticDrivingForce) where
  configurationalForceClosed : E.configurationalForce
  energyMomentumTensorClosed : E.energyMomentumTensor

def ElasticDrivingForceClosed (E : ElasticDrivingForce) : Prop :=
  E.configurationalForce ∧ E.energyMomentumTensor

theorem elastic_driving_force_closed_from_evidence
    (E : ElasticDrivingForce) (Ev : ElasticDrivingForceEvidence E) :
    ElasticDrivingForceClosed E := by
  exact And.intro Ev.configurationalForceClosed Ev.energyMomentumTensorClosed

end DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean
end HautevilleHouse