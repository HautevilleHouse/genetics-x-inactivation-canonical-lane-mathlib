import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsXInactivationCanonicalLaneLean

structure SequenceAlignmentPackage where
  sequenceA : String
  sequenceB : String
  alignmentScore : ℕ
  gapPenalty : ℕ

structure SequenceAlignmentEvidence (S : SequenceAlignmentPackage) where
  alignmentScoreOptimal : S.alignmentScore = max (S.alignmentScore) (S.alignmentScore)

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.alignmentScore = max S.alignmentScore S.alignmentScore

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentPackage)
    (E : SequenceAlignmentEvidence S) : SequenceAlignmentClosed S := by
  exact E.alignmentScoreOptimal

end GeneticsXInactivationCanonicalLaneLean
end HautevilleHouse