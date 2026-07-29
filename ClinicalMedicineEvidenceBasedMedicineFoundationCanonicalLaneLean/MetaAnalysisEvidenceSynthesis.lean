import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineEvidenceBasedMedicineFoundationCanonicalLaneLean

structure MetaAnalysisPackage where
  effectSizes : List ℝ
  studyWeights : List ℝ
  randomEffectsVariance : ℝ
  heterogeneityMeasure : ℝ
  publicationBiasAssessment : Prop
  subgroupAnalysisDefined : Prop
  sensitivityAnalysisPerformed : Prop
  overallEffectEstimate : ℝ
  confidenceInterval : ℝ × ℝ
  forestPlotConstructed : Prop
  evidenceGradeAssigned : Prop
  heterogeneityAddressed : Prop
  smallStudyEffectChecked : Prop

structure MetaAnalysisEvidence (M : MetaAnalysisPackage) where
  publicationBiasAssessmentClosed : M.publicationBiasAssessment
  subgroupAnalysisDefinedClosed : M.subgroupAnalysisDefined
  sensitivityAnalysisPerformedClosed : M.sensitivityAnalysisPerformed
  forestPlotConstructedClosed : M.forestPlotConstructed
  evidenceGradeAssignedClosed : M.evidenceGradeAssigned
  heterogeneityAddressedClosed : M.heterogeneityAddressed
  smallStudyEffectCheckedClosed : M.smallStudyEffectChecked

def MetaAnalysisClosed (M : MetaAnalysisPackage) : Prop :=
  M.publicationBiasAssessment ∧ M.subgroupAnalysisDefined ∧ M.sensitivityAnalysisPerformed ∧ M.forestPlotConstructed ∧ M.evidenceGradeAssigned ∧ M.heterogeneityAddressed ∧ M.smallStudyEffectChecked

theorem metaAnalysis_closed_from_evidence (M : MetaAnalysisPackage) (E : MetaAnalysisEvidence M) : MetaAnalysisClosed M := by
  exact And.intro E.publicationBiasAssessmentClosed
    (And.intro E.subgroupAnalysisDefinedClosed
      (And.intro E.sensitivityAnalysisPerformedClosed
        (And.intro E.forestPlotConstructedClosed
          (And.intro E.evidenceGradeAssignedClosed
            (And.intro E.heterogeneityAddressedClosed E.smallStudyEffectCheckedClosed)))))

end ClinicalMedicineEvidenceBasedMedicineFoundationCanonicalLaneLean
end HautevilleHouse