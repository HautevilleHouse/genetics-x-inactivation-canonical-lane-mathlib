import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsXInactivationCanonicalLaneLean

structure EvolutionaryConservationPackage where
  conservedNoncodingElements : Prop
  syntenicRegions : Prop
  functionalConstraints : Prop
  speciesSpecificVariation : Prop

structure EvolutionaryConservationEvidence (P : EvolutionaryConservationPackage) where
  conservedNoncodingElementsClosed : P.conservedNoncodingElements
  syntenicRegionsClosed : P.syntenicRegions
  functionalConstraintsClosed : P.functionalConstraints
  speciesSpecificVariationClosed : P.speciesSpecificVariation

def EvolutionaryConservationClosed (P : EvolutionaryConservationPackage) : Prop :=
  P.conservedNoncodingElements ∧ P.syntenicRegions ∧
  P.functionalConstraints ∧ P.speciesSpecificVariation

theorem evolutionary_conservation_closed_from_evidence (P : EvolutionaryConservationPackage)
    (E : EvolutionaryConservationEvidence P) : EvolutionaryConservationClosed P := by
  exact And.intro E.conservedNoncodingElementsClosed
    (And.intro E.syntenicRegionsClosed
      (And.intro E.functionalConstraintsClosed E.speciesSpecificVariationClosed))

end GeneticsXInactivationCanonicalLaneLean
end HautevilleHouse