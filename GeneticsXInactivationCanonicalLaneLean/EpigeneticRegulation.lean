import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsXInactivationCanonicalLaneLean

structure EpigeneticRegulationPackage where
  histoneModifications : Prop
  dnaMethylation : Prop
  chromatinRemodeling : Prop
  noncodingRnas : Prop

structure EpigeneticRegulationEvidence (P : EpigeneticRegulationPackage) where
  histoneModificationsClosed : P.histoneModifications
  dnaMethylationClosed : P.dnaMethylation
  chromatinRemodelingClosed : P.chromatinRemodeling
  noncodingRnasClosed : P.noncodingRnas

def EpigeneticRegulationClosed (P : EpigeneticRegulationPackage) : Prop :=
  P.histoneModifications ∧ P.dnaMethylation ∧
  P.chromatinRemodeling ∧ P.noncodingRnas

theorem epigenetic_regulation_closed_from_evidence (P : EpigeneticRegulationPackage)
    (E : EpigeneticRegulationEvidence P) : EpigeneticRegulationClosed P := by
  exact And.intro E.histoneModificationsClosed
    (And.intro E.dnaMethylationClosed
      (And.intro E.chromatinRemodelingClosed E.noncodingRnasClosed))

end GeneticsXInactivationCanonicalLaneLean
end HautevilleHouse