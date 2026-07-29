import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsXInactivationCanonicalLaneLean

structure LinkageAnalysisPackage where
  markerSet : Type u
  recombinationFraction : markerSet → markerSet → ℝ
  linkageEquilibrium : Prop
  lodScore : ℝ

structure LinkageAnalysisEvidence (L : LinkageAnalysisPackage) where
  linkageEquilibriumClosed : L.linkageEquilibrium
  lodScorePositive : L.lodScore > 0

def LinkageAnalysisClosed (L : LinkageAnalysisPackage) : Prop :=
  L.linkageEquilibrium ∧ L.lodScore > 0

theorem linkage_analysis_closed_from_evidence (L : LinkageAnalysisPackage)
    (E : LinkageAnalysisEvidence L) : LinkageAnalysisClosed L := by
  exact And.intro E.linkageEquilibriumClosed E.lodScorePositive

end GeneticsXInactivationCanonicalLaneLean
end HautevilleHouse