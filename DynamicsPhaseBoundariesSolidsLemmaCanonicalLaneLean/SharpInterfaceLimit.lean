import HautevilleHouse.DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean.PhaseFieldModel

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean

structure SharpInterfaceLimit {M : PhaseFieldModel} where
  interfaceSurface : Type u
  meanCurvature : interfaceSurface → ℝ
  surfaceTension : ℝ
  interfaceVelocity : ℝ
  gibbsThomsonCondition : Prop
  velocityLaw : Prop
  interfaceSurfaceTopology : TopologicalSpace interfaceSurface
  surfaceTensionPositive : surfaceTension > 0
  gibbsThomsonConditionTerm : gibbsThomsonCondition
  velocityLawTerm : velocityLaw

structure SharpInterfaceEvidence {M : PhaseFieldModel}
    (L : SharpInterfaceLimit M) where
  gibbsThomsonConditionClosed : L.gibbsThomsonCondition
  velocityLawClosed : L.velocityLaw

def SharpInterfaceLimitClosed {M : PhaseFieldModel}
    (L : SharpInterfaceLimit M) : Prop :=
  L.gibbsThomsonCondition ∧ L.velocityLaw

theorem sharp_interface_limit_closed_from_evidence
    {M : PhaseFieldModel} (L : SharpInterfaceLimit M)
    (E : SharpInterfaceEvidence L) : SharpInterfaceLimitClosed L := by
  exact And.intro E.gibbsThomsonConditionClosed E.velocityLawClosed

end DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean
end HautevilleHouse