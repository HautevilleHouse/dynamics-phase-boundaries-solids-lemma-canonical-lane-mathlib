import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean

structure PhaseTransitionLemmaPackage where
  material : Type u
  orderParameter : Type v
  temperature : ℝ
  criticalTemperature : ℝ
  freeEnergyBelow : Prop
  freeEnergyAbove : Prop
  transitionContinuous : Prop
  latentHeatFinite : Prop
  freeEnergyBelowTerm : freeEnergyBelow
  freeEnergyAboveTerm : freeEnergyAbove
  transitionContinuousTerm : transitionContinuous
  latentHeatFiniteTerm : latentHeatFinite

structure PhaseTransitionLemmaEvidence (L : PhaseTransitionLemmaPackage) where
  freeEnergyBelowClosed : L.freeEnergyBelow
  freeEnergyAboveClosed : L.freeEnergyAbove
  transitionContinuousClosed : L.transitionContinuous
  latentHeatFiniteClosed : L.latentHeatFinite

def PhaseTransitionLemmaClosed (L : PhaseTransitionLemmaPackage) : Prop :=
  L.freeEnergyBelow ∧ L.freeEnergyAbove ∧ L.transitionContinuous ∧ L.latentHeatFinite

theorem phase_transition_lemma_closed_from_evidence (L : PhaseTransitionLemmaPackage) (E : PhaseTransitionLemmaEvidence L) : PhaseTransitionLemmaClosed L :=
  And.intro E.freeEnergyBelowClosed (And.intro E.freeEnergyAboveClosed (And.intro E.transitionContinuousClosed E.latentHeatFiniteClosed))

end DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean
end HautevilleHouse