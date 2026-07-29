import canonicalLaneMathlib.FinalTheorem

namespace HautevilleHouse
namespace GeneticsXInactivationCanonicalLaneLean

def ConstrainedGeneticsXClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_genetics_x_endgame (A : AdmissibleClass) :
    ConstrainedGeneticsXClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeneticsXInactivationCanonicalLaneLean
end HautevilleHouse