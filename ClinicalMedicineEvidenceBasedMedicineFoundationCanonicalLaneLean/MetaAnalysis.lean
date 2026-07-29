import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineEvidenceBasedMedicineFoundationCanonicalLaneLean

structure MetaAnalysisPackage where
  studySelection : Prop
  heterogeneityAssessment : Prop
  fixedEffectModel : Prop
  randomEffectsModel : Prop
  publicationBiasAssessment : Prop
  forestPlotConstruction : Prop

structure MetaAnalysisEvidence (M : MetaAnalysisPackage) where
  studySelectionClosed : M.studySelection
  heterogeneityAssessmentClosed : M.heterogeneityAssessment
  fixedEffectModelClosed : M.fixedEffectModel
  randomEffectsModelClosed : M.randomEffectsModel
  publicationBiasAssessmentClosed : M.publicationBiasAssessment
  forestPlotConstructionClosed : M.forestPlotConstruction

def MetaAnalysisClosed (M : MetaAnalysisPackage) : Prop :=
  M.studySelection ∧ M.heterogeneityAssessment ∧ M.fixedEffectModel ∧
  M.randomEffectsModel ∧ M.publicationBiasAssessment ∧ M.forestPlotConstruction

theorem meta_analysis_closed_from_evidence (M : MetaAnalysisPackage) (E : MetaAnalysisEvidence M) :
    MetaAnalysisClosed M := by
  exact And.intro E.studySelectionClosed
    (And.intro E.heterogeneityAssessmentClosed
      (And.intro E.fixedEffectModelClosed
        (And.intro E.randomEffectsModelClosed
          (And.intro E.publicationBiasAssessmentClosed E.forestPlotConstructionClosed))))

end ClinicalMedicineEvidenceBasedMedicineFoundationCanonicalLaneLean
end HautevilleHouse