import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineEvidenceBasedMedicineFoundationCanonicalLaneLean

structure SurvivalAnalysisPackage where
  survivalFunction : ℝ → ℝ
  hazardFunction : ℝ → ℝ
  kaplanMeierEstimatorDefined : Prop
  coxModelDefined : Prop
  proportionalHazardsChecked : Prop

structure SurvivalAnalysisEvidence (S : SurvivalAnalysisPackage) where
  kaplanMeierEstimatorDefinedClosed : S.kaplanMeierEstimatorDefined
  coxModelDefinedClosed : S.coxModelDefined
  proportionalHazardsCheckedClosed : S.proportionalHazardsChecked

def SurvivalAnalysisClosed (S : SurvivalAnalysisPackage) : Prop :=
  S.kaplanMeierEstimatorDefined ∧ S.coxModelDefined ∧ S.proportionalHazardsChecked

theorem survival_analysis_closed_from_evidence (S : SurvivalAnalysisPackage)
    (E : SurvivalAnalysisEvidence S) : SurvivalAnalysisClosed S := by
  exact And.intro E.kaplanMeierEstimatorDefinedClosed
    (And.intro E.coxModelDefinedClosed E.proportionalHazardsCheckedClosed)

end ClinicalMedicineEvidenceBasedMedicineFoundationCanonicalLaneLean
end HautevilleHouse