import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsXInactivationCanonicalLaneLean

structure HardyWeinbergPackage (A : AdmissibleClass) where
  alleleFrequencies : Prop
  genotypeFrequencies : Prop
  equilibriumCondition : Prop
  chiSquareTest : Prop

structure HardyWeinbergEvidence (A : AdmissibleClass) (H : HardyWeinbergPackage A) where
  alleleFrequenciesClosed : H.alleleFrequencies
  genotypeFrequenciesClosed : H.genotypeFrequencies
  equilibriumConditionClosed : H.equilibriumCondition
  chiSquareTestClosed : H.chiSquareTest

def HardyWeinbergClosed (A : AdmissibleClass) (H : HardyWeinbergPackage A) : Prop :=
  H.alleleFrequencies ∧ H.genotypeFrequencies ∧ H.equilibriumCondition ∧ H.chiSquareTest

theorem hardy_weinberg_closed_from_evidence (A : AdmissibleClass) (H : HardyWeinbergPackage A)
    (E : HardyWeinbergEvidence A H) : HardyWeinbergClosed A H := by
  exact And.intro E.alleleFrequenciesClosed
    (And.intro E.genotypeFrequenciesClosed
      (And.intro E.equilibriumConditionClosed E.chiSquareTestClosed))

end GeneticsXInactivationCanonicalLaneLean
end HautevilleHouse