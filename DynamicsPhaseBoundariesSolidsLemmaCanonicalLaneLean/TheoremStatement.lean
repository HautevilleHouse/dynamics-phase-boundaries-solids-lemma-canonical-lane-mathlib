import DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := sourceTheoremBoundary.claimBoundary,
  manifoldConstrainedStatement := "Dynamics Phase Boundaries Solids Lemma: phase boundary stability under admissible deformations",
  certificateLane := baselineCertificateLane,
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
}

end DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean
end HautevilleHouse
