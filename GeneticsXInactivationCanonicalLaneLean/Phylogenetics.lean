import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsXInactivationCanonicalLaneLean

structure PhylogeneticsPackage where
  taxa : Type u
  tree : taxa → taxa → Prop
  branchLengths : taxa → taxa → ℝ
  molecularClock : Prop

structure PhylogeneticsEvidence (P : PhylogeneticsPackage) where
  treeConnected : ∀ a b : P.taxa, P.tree a b ∨ P.tree b a
  molecularClockClosed : P.molecularClock

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  (∀ a b : P.taxa, P.tree a b ∨ P.tree b a) ∧ P.molecularClock

theorem phylogenetics_closed_from_evidence (P : PhylogeneticsPackage)
    (E : PhylogeneticsEvidence P) : PhylogeneticsClosed P := by
  exact And.intro E.treeConnected E.molecularClockClosed

end GeneticsXInactivationCanonicalLaneLean
end HautevilleHouse