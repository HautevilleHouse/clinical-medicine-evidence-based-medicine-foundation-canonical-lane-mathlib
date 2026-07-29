import ClinicalMedicineEvidenceBasedMedicineFoundationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace ClinicalMedicineEvidenceBasedMedicineFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ClinicalStudy where
  population : Type
  intervention : Type
  comparator : Type
  outcome : Type

structure ClinicalAdmittedObject where
  study : ClinicalStudy
  randomizedControlled : Prop
  blinded : Prop
  adequatePower : Prop
  conclusion : randomizedControlled ∧ blinded ∧ adequatePower

structure ClinicalEndgameState where
  object : ClinicalAdmittedObject

def ClinicalWitnessClosed (O : ClinicalAdmittedObject) : Prop :=
  O.conclusion

end ClinicalMedicineEvidenceBasedMedicineFoundationCanonicalLaneLean
end HautevilleHouse