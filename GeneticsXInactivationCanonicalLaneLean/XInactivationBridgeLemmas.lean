import canonicalLaneMathlib.BridgeLemmas

namespace HautevilleHouse
namespace GeneticsXInactivationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GeneticsXWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GeneticsXInactivationCanonicalLaneLean
end HautevilleHouse