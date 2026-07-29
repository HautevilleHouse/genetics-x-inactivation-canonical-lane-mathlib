import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsXInactivationCanonicalLaneLean

structure AlleleFrequencyPackage where
  locus : Type u
  allele : Type v
  population : Type w
  frequency : population → allele → ℝ
  hardyWeinbergEquilibrium : Prop

structure AlleleFrequencyEvidence (A : AlleleFrequencyPackage) where
  hardyWeinbergEquilibriumClosed : A.hardyWeinbergEquilibrium

def AlleleFrequencyClosed (A : AlleleFrequencyPackage) : Prop :=
  A.hardyWeinbergEquilibrium

theorem allele_frequency_closed_from_evidence (A : AlleleFrequencyPackage)
    (E : AlleleFrequencyEvidence A) : AlleleFrequencyClosed A := by
  exact E.hardyWeinbergEquilibriumClosed

end GeneticsXInactivationCanonicalLaneLean
end HautevilleHouse