import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean

structure SharpInterfaceAsymptoticsPackage where
  interfaceWidth : Type u
  surfaceTension : Type v
  asymptoticExpansion : Prop
  leadingOrderProfile : Prop
  curvatureCorrection : Prop
  stiffnessJump : Prop

structure SharpInterfaceAsymptoticsEvidence (S : SharpInterfaceAsymptoticsPackage) where
  asymptoticExpansionClosed : S.asymptoticExpansion
  leadingOrderProfileClosed : S.leadingOrderProfile
  curvatureCorrectionClosed : S.curvatureCorrection
  stiffnessJumpClosed : S.stiffnessJump

def SharpInterfaceAsymptoticsClosed (S : SharpInterfaceAsymptoticsPackage) : Prop :=
  S.asymptoticExpansion ∧ S.leadingOrderProfile ∧ S.curvatureCorrection ∧ S.stiffnessJump

theorem sharp_interface_asymptotics_closed_from_evidence (S : SharpInterfaceAsymptoticsPackage) (E : SharpInterfaceAsymptoticsEvidence S) : SharpInterfaceAsymptoticsClosed S := by
  exact And.intro E.asymptoticExpansionClosed (And.intro E.leadingOrderProfileClosed (And.intro E.curvatureCorrectionClosed E.stiffnessJumpClosed))

end DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean
end HautevilleHouse