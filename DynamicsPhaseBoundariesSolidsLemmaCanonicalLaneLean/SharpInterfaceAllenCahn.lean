import HautevilleHouse.DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean.PhaseFieldCahnHilliard

/-!
# Sharp-Interface Allen-Cahn Limit
-/

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean

structure AllenCahnPackage (C : CahnHilliardPackage) where
  interfaceWidth : Prop
  mobility : Prop
  reactionTerm : Prop
  allenCahnEquation : Prop
  sharpInterfaceLimit : Prop

structure AllenCahnEvidence {C : CahnHilliardPackage} (A : AllenCahnPackage C) where
  interfaceWidthClosed : A.interfaceWidth
  mobilityClosed : A.mobility
  reactionTermClosed : A.reactionTerm
  allenCahnEquationClosed : A.allenCahnEquation
  sharpInterfaceLimitClosed : A.sharpInterfaceLimit

def AllenCahnClosed {C : CahnHilliardPackage} (A : AllenCahnPackage C) : Prop :=
  A.interfaceWidth ∧ A.mobility ∧ A.reactionTerm ∧ A.allenCahnEquation ∧ A.sharpInterfaceLimit

theorem allen_cahn_closed_from_evidence {C : CahnHilliardPackage} (A : AllenCahnPackage C) (E : AllenCahnEvidence A) : AllenCahnClosed A := by
  exact And.intro E.interfaceWidthClosed (And.intro E.mobilityClosed (And.intro E.reactionTermClosed (And.intro E.allenCahnEquationClosed E.sharpInterfaceLimitClosed)))

end DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean
end HautevilleHouse