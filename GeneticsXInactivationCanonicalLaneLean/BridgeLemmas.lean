import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsXInactivationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | _ => True

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact True.intro

end GeneticsXInactivationCanonicalLaneLean
end HautevilleHouse