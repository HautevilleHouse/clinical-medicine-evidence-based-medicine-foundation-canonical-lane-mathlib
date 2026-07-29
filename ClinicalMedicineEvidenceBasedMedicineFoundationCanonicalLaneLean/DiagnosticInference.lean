import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineEvidenceBasedMedicineFoundationCanonicalLaneLean

structure DiagnosticInferencePackage where
  sensitivity : Float
  specificity : Float
  prevalence : Float
  positivePredictiveValue : Prop
  negativePredictiveValue : Prop
  likelihoodRatioPositive : Prop
  likelihoodRatioNegative : Prop

structure DiagnosticInferenceEvidence (D : DiagnosticInferencePackage) where
  positivePredictiveValueClosed : D.positivePredictiveValue
  negativePredictiveValueClosed : D.negativePredictiveValue
  likelihoodRatioPositiveClosed : D.likelihoodRatioPositive
  likelihoodRatioNegativeClosed : D.likelihoodRatioNegative

def DiagnosticInferenceClosed (D : DiagnosticInferencePackage) : Prop :=
  D.positivePredictiveValue ∧ D.negativePredictiveValue ∧
  D.likelihoodRatioPositive ∧ D.likelihoodRatioNegative

theorem diagnostic_inference_closed_from_evidence (D : DiagnosticInferencePackage) (E : DiagnosticInferenceEvidence D) :
    DiagnosticInferenceClosed D := by
  exact And.intro E.positivePredictiveValueClosed
    (And.intro E.negativePredictiveValueClosed
      (And.intro E.likelihoodRatioPositiveClosed E.likelihoodRatioNegativeClosed))

end ClinicalMedicineEvidenceBasedMedicineFoundationCanonicalLaneLean
end HautevilleHouse