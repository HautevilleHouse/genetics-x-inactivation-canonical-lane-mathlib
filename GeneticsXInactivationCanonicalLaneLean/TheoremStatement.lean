import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsXInactivationCanonicalLaneLean

structure ProofObligation where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  carriedRemainder : String
  certificateLane : String

def sourceKey : String := "GeneticsXInactivationCanonicalLane"
def theoremName : String := "X Inactivation"
def theoremObject : String := "monoallelic expression and X-linked inheritance"
def classicalBoundary : String := "molecular mechanism of X inactivation"
def carriedRemainder : String := "full developmental and evolutionary consequences"
def certificateLane : String := "genetics_constrained"

def sourceTheoremStatement : ProofObligation :=
  { sourceKey := sourceKey,
    theoremName := theoremName,
    theoremObject := theoremObject,
    classicalBoundary := classicalBoundary,
    carriedRemainder := carriedRemainder,
    certificateLane := certificateLane
  }

theorem theorem_statement_source_key_checked : sourceTheoremStatement.sourceKey = sourceKey := by rfl
theorem theorem_statement_certificate_lane_checked : sourceTheoremStatement.certificateLane = certificateLane := by rfl

end GeneticsXInactivationCanonicalLaneLean
end HautevilleHouse