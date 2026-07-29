import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean

structure ElasticFreeEnergyPackage where
  strainEnergyDensity : Type u
  elasticTensor : Type v
  freeEnergyDensity : Prop
  frameIndifference : Prop
  polyconvexity : Prop
  growthCondition : Prop

structure ElasticFreeEnergyEvidence (E : ElasticFreeEnergyPackage) where
  freeEnergyDensityClosed : E.freeEnergyDensity
  frameIndifferenceClosed : E.frameIndifference
  polyconvexityClosed : E.polyconvexity
  growthConditionClosed : E.growthCondition

def ElasticFreeEnergyClosed (E : ElasticFreeEnergyPackage) : Prop :=
  E.freeEnergyDensity ∧ E.frameIndifference ∧ E.polyconvexity ∧ E.growthCondition

theorem elastic_free_energy_closed_from_evidence (E : ElasticFreeEnergyPackage) (Ev : ElasticFreeEnergyEvidence E) : ElasticFreeEnergyClosed E := by
  exact And.intro Ev.freeEnergyDensityClosed (And.intro Ev.frameIndifferenceClosed (And.intro Ev.polyconvexityClosed Ev.growthConditionClosed))

end DynamicsPhaseBoundariesSolidsLemmaCanonicalLaneLean
nd HautevilleHouse