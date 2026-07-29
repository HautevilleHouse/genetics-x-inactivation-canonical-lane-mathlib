import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsXInactivationCanonicalLaneLean

structure XInactivationMechanismPackage where
  xChromosomeLocus : Type u
  silencingFactor : Type v
  inactivationChoice : Prop
  randomSelection : Prop

structure XInactivationMechanismEvidence (X : XInactivationMechanismPackage) where
  inactivationChoiceClosed : X.inactivationChoice
  randomSelectionClosed : X.randomSelection

def XInactivationMechanismClosed (X : XInactivationMechanismPackage) : Prop :=
  X.inactivationChoice ∧ X.randomSelection

theorem x_inactivation_mechanism_closed_from_evidence (X : XInactivationMechanismPackage)
    (E : XInactivationMechanismEvidence X) : XInactivationMechanismClosed X := by
  exact And.intro E.inactivationChoiceClosed E.randomSelectionClosed

end GeneticsXInactivationCanonicalLaneLean
end HautevilleHouse