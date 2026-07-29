import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineEvidenceBasedMedicineFoundationCanonicalLaneLean

structure StudyResult where
  effectSize : ℝ
  variance : ℝ
  sampleSize : Nat

structure MetaAnalysisPackage where
  studies : List StudyResult
  pooledEffect : ℝ
  heterogeneity : Prop
  randomEffectsModel : Prop

structure MetaAnalysisEvidence (M : MetaAnalysisPackage) where
  heterogeneityClosed : M.heterogeneity
  randomEffectsModelClosed : M.randomEffectsModel

def MetaAnalysisClosed (M : MetaAnalysisPackage) : Prop :=
  M.heterogeneity ∧ M.randomEffectsModel

theorem meta_analysis_closed_from_evidence (M : MetaAnalysisPackage) (E : MetaAnalysisEvidence M) : MetaAnalysisClosed M :=
  And.intro E.heterogeneityClosed E.randomEffectsModelClosed

def studyWeight (study : StudyResult) (totalVariance : ℝ) : ℝ :=
  (1 / study.variance) / totalVariance

end ClinicalMedicineEvidenceBasedMedicineFoundationCanonicalLaneLean
end HautevilleHouse