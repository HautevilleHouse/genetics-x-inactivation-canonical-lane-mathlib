import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsXInactivationCanonicalLaneLean

structure HardyWeinbergPackage where
  alleleFrequencies : Prop
  genotypeFrequencies : Prop
  equilibriumCondition : Prop
  populationSizeInfinite : Prop
  randomMating : Prop
  noSelection : Prop
  noMutation : Prop
  noMigration : Prop

structure HardyWeinbergEvidence (H : HardyWeinbergPackage) where
  alleleFrequenciesClosed : H.alleleFrequencies
  genotypeFrequenciesClosed : H.genotypeFrequencies
  equilibriumConditionClosed : H.equilibriumCondition
  populationSizeInfiniteClosed : H.populationSizeInfinite
  randomMatingClosed : H.randomMating
  noSelectionClosed : H.noSelection
  noMutationClosed : H.noMutation
  noMigrationClosed : H.noMigration

def HardyWeinbergClosed (H : HardyWeinbergPackage) : Prop :=
  H.alleleFrequencies ∧ H.genotypeFrequencies ∧ H.equilibriumCondition ∧
  H.populationSizeInfinite ∧ H.randomMating ∧ H.noSelection ∧ H.noMutation ∧ H.noMigration

theorem hardy_weinberg_closed_from_evidence (H : HardyWeinbergPackage) (E : HardyWeinbergEvidence H) :
    HardyWeinbergClosed H := by
  exact And.intro E.alleleFrequenciesClosed
    (And.intro E.genotypeFrequenciesClosed
      (And.intro E.equilibriumConditionClosed
        (And.intro E.populationSizeInfiniteClosed
          (And.intro E.randomMatingClosed
            (And.intro E.noSelectionClosed
              (And.intro E.noMutationClosed E.noMigrationClosed))))))

end HautevilleHouse.GeneticsXInactivationCanonicalLaneLean
end HautevilleHouse