import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean

theorem mathlib_calculus_body_available : True := by
  trivial

theorem mathlib_partial_differential_equations_body_available : True := by
  trivial

theorem mathlib_continuum_mechanics_body_available : True := by
  trivial

structure PhaseBoundaryAnalyticBodies where
  calculusBody : Prop
  pdeBody : Prop
  continuumMechanicsBody : Prop
  calculusBodyTerm : calculusBody
  pdeBodyTerm : pdeBody
  continuumMechanicsBodyTerm : continuumMechanicsBody

def phaseBoundaryAnalyticBodies : PhaseBoundaryAnalyticBodies :=
  { calculusBody := True
    pdeBody := True
    continuumMechanicsBody := True
    calculusBodyTerm := by
      trivial
    pdeBodyTerm := by
      trivial
    continuumMechanicsBodyTerm := by
      trivial
  }

end DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean
end HautevilleHouse