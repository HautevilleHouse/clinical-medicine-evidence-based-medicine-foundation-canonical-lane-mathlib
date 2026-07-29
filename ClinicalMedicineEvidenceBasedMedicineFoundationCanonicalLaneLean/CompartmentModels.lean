import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineEvidenceBasedMedicineFoundationCanonicalLaneLean

structure CompartmentModel where
  compartments : Nat
  transferRates : Nat -> Nat -> ℝ
  initialConcentrations : Nat -> ℝ
  massBalance : Prop
  flowContinuous : Prop

structure CompartmentModelEvidence (C : CompartmentModel) where
  massBalanceClosed : C.massBalance
  flowContinuousClosed : C.flowContinuous

def CompartmentModelClosed (C : CompartmentModel) : Prop :=
  C.massBalance ∧ C.flowContinuous

theorem compartment_model_closed_from_evidence (C : CompartmentModel) (E : CompartmentModelEvidence C) : CompartmentModelClosed C :=
  And.intro E.massBalanceClosed E.flowContinuousClosed

end ClinicalMedicineEvidenceBasedMedicineFoundationCanonicalLaneLean
end HautevilleHouse