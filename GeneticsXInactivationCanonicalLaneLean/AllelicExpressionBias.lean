import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsXInactivationCanonicalLaneLean

structure AllelicExpressionBiasPackage where
  skewedInactivation : Prop
  tissueSpecificBias : Prop
  escapeFromInactivation : Prop
  dosageCompensation : Prop

structure AllelicExpressionBiasEvidence (P : AllelicExpressionBiasPackage) where
  skewedInactivationClosed : P.skewedInactivation
  tissueSpecificBiasClosed : P.tissueSpecificBias
  escapeFromInactivationClosed : P.escapeFromInactivation
  dosageCompensationClosed : P.dosageCompensation

def AllelicExpressionBiasClosed (P : AllelicExpressionBiasPackage) : Prop :=
  P.skewedInactivation ∧ P.tissueSpecificBias ∧
  P.escapeFromInactivation ∧ P.dosageCompensation

theorem allelic_expression_bias_closed_from_evidence (P : AllelicExpressionBiasPackage)
    (E : AllelicExpressionBiasEvidence P) : AllelicExpressionBiasClosed P := by
  exact And.intro E.skewedInactivationClosed
    (And.intro E.tissueSpecificBiasClosed
      (And.intro E.escapeFromInactivationClosed E.dosageCompensationClosed))

end GeneticsXInactivationCanonicalLaneLean
end HautevilleHouse