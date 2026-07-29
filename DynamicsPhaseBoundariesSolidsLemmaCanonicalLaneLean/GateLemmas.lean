import HautevilleHouse.DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean
end HautevilleHouse