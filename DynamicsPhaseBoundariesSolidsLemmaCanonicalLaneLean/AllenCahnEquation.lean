import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean

structure AllenCahnEquation where
  orderParameter : Type u → Type u
  doubleWellPotential : Type u → Type u
  gradientFlow : Prop
  mobilityConstant : ℝ
  interfaceThickness : ℝ
  gradientFlowTerm : gradientFlow

structure AllenCahnEquationEvidence (A : AllenCahnEquation) where
  gradientFlowClosed : A.gradientFlow

def AllenCahnEquationClosed (A : AllenCahnEquation) : Prop :=
  A.gradientFlow

theorem allen_cahn_equation_closed_from_evidence
    (A : AllenCahnEquation) (E : AllenCahnEquationEvidence A) :
    AllenCahnEquationClosed A := by
  exact E.gradientFlowClosed

end DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean
end HautevilleHouse