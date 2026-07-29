import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsXInactivationCanonicalLaneLean

structure XInactivationPackage where
  xChromosome : Prop
  inactivationMechanism : Prop
  randomChoice : Prop
  clonalExpansion : Prop
  mosaicPattern : Prop
  dosageCompensation : Prop
  escapeFromInactivation : Prop
  imprintingCentre : Prop

structure XInactivationEvidence (X : XInactivationPackage) where
  xChromosomeClosed : X.xChromosome
  inactivationMechanismClosed : X.inactivationMechanism
  randomChoiceClosed : X.randomChoice
  clonalExpansionClosed : X.clonalExpansion
  mosaicPatternClosed : X.mosaicPattern
  dosageCompensationClosed : X.dosageCompensation
  escapeFromInactivationClosed : X.escapeFromInactivation
  imprintingCentreClosed : X.imprintingCentre

def XInactivationClosed (X : XInactivationPackage) : Prop :=
  X.xChromosome ∧ X.inactivationMechanism ∧ X.randomChoice ∧ X.clonalExpansion ∧
  X.mosaicPattern ∧ X.dosageCompensation ∧ X.escapeFromInactivation ∧ X.imprintingCentre

theorem x_inactivation_closed_from_evidence (X : XInactivationPackage) (E : XInactivationEvidence X) :
    XInactivationClosed X := by
  exact And.intro E.xChromosomeClosed
    (And.intro E.inactivationMechanismClosed
      (And.intro E.randomChoiceClosed
        (And.intro E.clonalExpansionClosed
          (And.intro E.mosaicPatternClosed
            (And.intro E.dosageCompensationClosed
              (And.intro E.escapeFromInactivationClosed E.imprintingCentreClosed))))))

end HautevilleHouse.GeneticsXInactivationCanonicalLaneLean
end HautevilleHouse