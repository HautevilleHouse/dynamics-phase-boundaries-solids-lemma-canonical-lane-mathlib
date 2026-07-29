import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean

structure AllenCahnDynamicsPackage where
  phaseField : Type u
  timeDomain : Type v
  chemicalPotential : Type w
  parabolicPDE : Prop
  boundaryConditions : Prop
  wellPosedness : Prop

structure AllenCahnDynamicsEvidence (A : AllenCahnDynamicsPackage) where
  parabolicPDEClosed : A.parabolicPDE
  boundaryConditionsClosed : A.boundaryConditions
  wellPosednessClosed : A.wellPosedness

def AllenCahnDynamicsClosed (A : AllenCahnDynamicsPackage) : Prop :=
  A.parabolicPDE ∧ A.boundaryConditions ∧ A.wellPosedness

theorem allen_cahn_dynamics_closed_from_evidence
    (A : AllenCahnDynamicsPackage) (E : AllenCahnDynamicsEvidence A) :
    AllenCahnDynamicsClosed A := by
  exact And.intro E.parabolicPDEClosed
    (And.intro E.boundaryConditionsClosed E.wellPosednessClosed)

end DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean
end HautevilleHouse
