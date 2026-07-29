import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean

structure CahnHilliardEquation where
  concentrationField : Type u → Type u
  chemicalPotential : Type u → Type u
  conservationLaw : Prop
  mobilityTensor : Type u → Type u
  spinodalDecomposition : Prop
  conservationLawTerm : conservationLaw
  spinodalDecompositionTerm : spinodalDecomposition

structure CahnHilliardEquationEvidence (C : CahnHilliardEquation) where
  conservationLawClosed : C.conservationLaw
  spinodalDecompositionClosed : C.spinodalDecomposition

def CahnHilliardEquationClosed (C : CahnHilliardEquation) : Prop :=
  C.conservationLaw ∧ C.spinodalDecomposition

theorem cahn_hilliard_equation_closed_from_evidence
    (C : CahnHilliardEquation) (E : CahnHilliardEquationEvidence C) :
    CahnHilliardEquationClosed C := by
  exact And.intro E.conservationLawClosed E.spinodalDecompositionClosed

end DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean
end HautevilleHouse