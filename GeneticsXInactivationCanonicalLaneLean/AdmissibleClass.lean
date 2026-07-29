import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsXInactivationCanonicalLaneLean

structure AdmittedGeneticsObject where
  locus : String
  xLinked : Prop
  monoallelicExpression : Prop
  escapeFromInactivation : Prop
  conclusion : escapeFromInactivation

structure AdmissibleClass where
  object : AdmittedGeneticsObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AdmittedGeneticsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeneticsXInactivationCanonicalLaneLean
end HautevilleHouse