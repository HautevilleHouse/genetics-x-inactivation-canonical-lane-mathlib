import HautevilleHouse.GeneticsXInactivationCanonicalLaneLean.GeneticsXInactivationGateLemmas

namespace HautevilleHouse
namespace GeneticsXInactivationCanonicalLaneLean

def ConstrainedXInactivationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_x_inactivation_endgame (A : AdmissibleClass) :
    ConstrainedXInactivationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeneticsXInactivationCanonicalLaneLean
end HautevilleHouse
