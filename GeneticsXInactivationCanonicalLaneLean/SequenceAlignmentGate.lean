import …LinkageAnalysis

namespace HautevilleHouse
namespace GeneticsXInactivationCanonicalLaneLean

structure SequenceAlignmentPackage where
  referenceGenome : Type u
  reads : List ℝ
  alignmentScore : ℝ
  mappingQuality : ℝ
  alignmentComplete : Prop

structure SequenceAlignmentEvidence (S : SequenceAlignmentPackage) where
  alignmentScoreAboveThreshold : S.alignmentScore > 30.0
  mappingQualityAboveThreshold : S.mappingQuality > 20.0
  alignmentCompleteClosed : S.alignmentComplete

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.alignmentScore > 30.0 ∧ S.mappingQuality > 20.0 ∧ S.alignmentComplete

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentPackage) (E : SequenceAlignmentEvidence S) :
  SequenceAlignmentClosed S := by
  exact And.intro E.alignmentScoreAboveThreshold (And.intro E.mappingQualityAboveThreshold E.alignmentCompleteClosed)

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
  gateClosed A := by
  exact A.gateWitness

end GeneticsXInactivationCanonicalLaneLean
end HautevilleHouse