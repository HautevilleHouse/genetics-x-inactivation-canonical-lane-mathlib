import HautevilleHouse.GeneticsXInactivationCanonicalLaneLean.GeneticsXInactivationAdmissibleClass

namespace HautevilleHouse
namespace GeneticsXInactivationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GeneticsXInactivationCanonicalLaneLean
end HautevilleHouse
