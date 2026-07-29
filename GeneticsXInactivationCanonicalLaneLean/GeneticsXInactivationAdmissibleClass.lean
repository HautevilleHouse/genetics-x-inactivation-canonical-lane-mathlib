import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsXInactivationCanonicalLaneLean

structure XInactivationObject where
  carrier : Type
  numXChromosomes : Nat
  randomInactivation : Prop
  expressionBalance : Prop
  conclusion : Prop

structure AdmissibleClass where
  object : XInactivationObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeneticsXInactivationCanonicalLaneLean
end HautevilleHouse
