import …SequenceAlignmentGate

namespace HautevilleHouse
namespace GeneticsXInactivationCanonicalLaneLean

structure PhylogeneticsPackage where
  speciesTree : Type u
  geneTree : Type v
  substitutionModel : Type w
  bootstrapSupport : ℝ
  treeReconciled : Prop

structure PhylogeneticsEvidence (P : PhylogeneticsPackage) where
  bootstrapSupportHigh : P.bootstrapSupport > 70.0
  treeReconciledClosed : P.treeReconciled

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  P.bootstrapSupport > 70.0 ∧ P.treeReconciled

theorem phylogenetics_closed_from_evidence (P : PhylogeneticsPackage) (E : PhylogeneticsEvidence P) :
  PhylogeneticsClosed P := by
  exact And.intro E.bootstrapSupportHigh E.treeReconciledClosed

end GeneticsXInactivationCanonicalLaneLean
end HautevilleHouse