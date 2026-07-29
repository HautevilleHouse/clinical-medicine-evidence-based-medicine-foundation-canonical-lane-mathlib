import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineEvidenceBasedMedicineFoundationCanonicalLaneLean

structure ClinicalEvidence where
  studyType : String
  sampleSize : Nat
  effectSize : ℚ
  confidenceInterval : ℚ × ℚ

structure ClinicalAdmittedObject where
  evidence : ClinicalEvidence
  biasRisk : Prop
  consistency : Prop
  directness : Prop
  precision : Prop
  conclusion : biasRisk ∧ consistency ∧ directness ∧ precision

def ClinicalWitnessClosed (O : ClinicalAdmittedObject) : Prop :=
  O.conclusion

end ClinicalMedicineEvidenceBasedMedicineFoundationCanonicalLaneLean
end HautevilleHouse