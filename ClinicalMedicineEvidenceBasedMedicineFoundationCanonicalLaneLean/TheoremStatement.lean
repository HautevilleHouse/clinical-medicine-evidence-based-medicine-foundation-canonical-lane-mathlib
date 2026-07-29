import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineEvidenceBasedMedicineFoundationCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  evidenceBasedConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceRepository : String := "clinical-medicine-evidence-based-medicine-foundation"
def sourceDescription : String := "Evidence Based Medicine Foundation"
def sourceTheoremBoundaryClaim : String := "Evidence-based medicine foundations constrained to admissible clinical objects"

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := sourceRepository
    theoremName := "ConstrainedEvidenceBasedMedicineClosure"
    theoremObject := sourceDescription
    classicalBoundary := sourceTheoremBoundaryClaim
    evidenceBasedConstrainedStatement := "Evidence-based medicine foundations are closed under bridge and gate for all admissible clinical evidence objects"
    certificateLane := "clinical_constrained"
    carriedRemainder := "Endpoint classification and clinical trial evidence gate remain as carried remainder"
  }

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

end ClinicalMedicineEvidenceBasedMedicineFoundationCanonicalLaneLean
end HautevilleHouse