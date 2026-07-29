import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean

structure SolidPhaseBoundaryPackage where
  domain : Type u
  topology : TopologicalSpace domain
  phaseField : domain → String
  regionA : Set domain
  regionB : Set domain
  interfaceRegion : Set domain
  freeEnergyFunctional : Type v
  smoothnessCondition : Prop
  coexistenceCondition : Prop
  interfaceWidthFinite : Prop
  smoothnessConditionTerm : smoothnessCondition
  coexistenceConditionTerm : coexistenceCondition
  interfaceWidthFiniteTerm : interfaceWidthFinite

structure SolidPhaseBoundaryEvidence (P : SolidPhaseBoundaryPackage) where
  smoothnessConditionClosed : P.smoothnessCondition
  coexistenceConditionClosed : P.coexistenceCondition
  interfaceWidthFiniteClosed : P.interfaceWidthFinite

def SolidPhaseBoundaryClosed (P : SolidPhaseBoundaryPackage) : Prop :=
  P.smoothnessCondition ∧ P.coexistenceCondition ∧ P.interfaceWidthFinite

theorem solid_phase_boundary_closed_from_evidence (P : SolidPhaseBoundaryPackage) (E : SolidPhaseBoundaryEvidence P) : SolidPhaseBoundaryClosed P :=
  And.intro E.smoothnessConditionClosed (And.intro E.coexistenceConditionClosed E.interfaceWidthFiniteClosed)

end DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean
end HautevilleHouse