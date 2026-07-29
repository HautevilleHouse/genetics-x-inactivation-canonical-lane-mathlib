import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsXInactivationCanonicalLaneLean

structure XInactivationAdmittedObject where
  XlinkedLocus : Type u
  allelePool : Type v
  epigeneticState : Prop
  allelicExpressionRatio : ℝ
  conclusion : allelicExpressionRatio ≈ 1.0

structure AdmissibleClass where
  object : XInactivationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  XInactivationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def XInactivationWitnessClosed (O : XInactivationAdmittedObject) : Prop :=
  O.conclusion

end GeneticsXInactivationCanonicalLaneLean
end HautevilleHouse