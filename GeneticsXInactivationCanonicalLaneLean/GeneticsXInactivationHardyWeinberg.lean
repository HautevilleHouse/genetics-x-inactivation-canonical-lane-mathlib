import HautevilleHouse.GeneticsXInactivationCanonicalLaneLean.GeneticsXInactivationAdmissibleClass

namespace HautevilleHouse
namespace GeneticsXInactivationCanonicalLaneLean

structure HardyWeinbergPackage (A : AdmissibleClass) where
  alleleFrequencies : Prop
  genotypeFrequencies : Prop
  equilibriumCondition : Prop
  xLinkedLocus : Prop

structure HardyWeinbergEvidence {A : AdmissibleClass} (H : HardyWeinbergPackage A) where
  alleleFrequenciesClosed : H.alleleFrequencies
  genotypeFrequenciesClosed : H.genotypeFrequencies
  equilibriumConditionClosed : H.equilibriumCondition
  xLinkedLocusClosed : H.xLinkedLocus

def HardyWeinbergClosed {A : AdmissibleClass} (H : HardyWeinbergPackage A) : Prop :=
  H.alleleFrequencies ∧ H.genotypeFrequencies ∧ H.equilibriumCondition ∧ H.xLinkedLocus

theorem hardy_weinberg_closed_from_evidence {A : AdmissibleClass}
    (H : HardyWeinbergPackage A) (E : HardyWeinbergEvidence H) :
    HardyWeinbergClosed H := by
  exact And.intro E.alleleFrequenciesClosed
    (And.intro E.genotypeFrequenciesClosed
      (And.intro E.equilibriumConditionClosed E.xLinkedLocusClosed))

end GeneticsXInactivationCanonicalLaneLean
end HautevilleHouse
