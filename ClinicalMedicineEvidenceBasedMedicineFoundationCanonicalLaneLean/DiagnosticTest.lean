import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineEvidenceBasedMedicineFoundationCanonicalLaneLean

structure DiagnosticTestPackage where
  sensitivity : ℝ
  specificity : ℝ
  prevalence : ℝ
  ppvCalculated : Prop
  npvCalculated : Prop
  likelihoodRatiosComputed : Prop

structure DiagnosticTestEvidence (D : DiagnosticTestPackage) where
  ppvCalculatedClosed : D.ppvCalculated
  npvCalculatedClosed : D.npvCalculated
  likelihoodRatiosComputedClosed : D.likelihoodRatiosComputed

def DiagnosticTestClosed (D : DiagnosticTestPackage) : Prop :=
  D.ppvCalculated ∧ D.npvCalculated ∧ D.likelihoodRatiosComputed

theorem diagnostic_test_closed_from_evidence (D : DiagnosticTestPackage)
    (E : DiagnosticTestEvidence D) : DiagnosticTestClosed D := by
  exact And.intro E.ppvCalculatedClosed
    (And.intro E.npvCalculatedClosed E.likelihoodRatiosComputedClosed)

end ClinicalMedicineEvidenceBasedMedicineFoundationCanonicalLaneLean
end HautevilleHouse