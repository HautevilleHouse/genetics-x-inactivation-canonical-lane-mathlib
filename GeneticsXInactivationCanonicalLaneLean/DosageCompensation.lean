import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsXInactivationCanonicalLaneLean

structure DosageCompensationPackage where
  xToAutosomeRatio : Prop
  globalExpressionBalance : Prop
  sexChromosomeRegulation : Prop

structure DosageCompensationEvidence (P : DosageCompensationPackage) where
  xToAutosomeRatioClosed : P.xToAutosomeRatio
  globalExpressionBalanceClosed : P.globalExpressionBalance
  sexChromosomeRegulationClosed : P.sexChromosomeRegulation

def DosageCompensationClosed (P : DosageCompensationPackage) : Prop :=
  P.xToAutosomeRatio ∧ P.globalExpressionBalance ∧ P.sexChromosomeRegulation

theorem dosage_compensation_closed_from_evidence (P : DosageCompensationPackage)
    (E : DosageCompensationEvidence P) : DosageCompensationClosed P := by
  exact And.intro E.xToAutosomeRatioClosed
    (And.intro E.globalExpressionBalanceClosed E.sexChromosomeRegulationClosed)

end GeneticsXInactivationCanonicalLaneLean
end HautevilleHouse