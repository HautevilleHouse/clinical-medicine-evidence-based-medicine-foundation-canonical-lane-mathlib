import ClinicalMedicineEvidenceBasedMedicineFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineEvidenceBasedMedicineFoundationCanonicalLaneLean

structure CompartmentModel where
  compartments : Nat
  rateConstants : Type
  initialConditions : Type
  solution : Type
  identifiability : Prop
  identifiabilityClosed : identifiability

structure PharmacokineticEvidence (A : AdmissibleClass) where
  model : CompartmentModel
  modelIdentified : model.identifiabilityClosed
  bridgeClosedFromModel : bridgeClosed A
  gateClosedFromModel : gateClosed A

theorem pharmacokinetic_evidence_yields_endpoint (A : AdmissibleClass)
    (E : PharmacokineticEvidence A) : ConstrainedClinicalClosure A := by
  exact And.intro E.bridgeClosedFromModel E.gateClosedFromModel

end ClinicalMedicineEvidenceBasedMedicineFoundationCanonicalLaneLean
end HautevilleHouse