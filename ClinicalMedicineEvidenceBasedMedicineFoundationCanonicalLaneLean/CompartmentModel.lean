import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineEvidenceBasedMedicineFoundationCanonicalLaneLean

structure CompartmentModelPackage where
  numCompartments : Nat
  transferRates : Array (Array ℝ)
  initialConditions : Array ℝ
  solutionDefined : Prop
  solutionUnique : Prop

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  solutionDefinedClosed : C.solutionDefined
  solutionUniqueClosed : C.solutionUnique

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.solutionDefined ∧ C.solutionUnique

theorem compartment_model_closed_from_evidence (C : CompartmentModelPackage)
    (E : CompartmentModelEvidence C) : CompartmentModelClosed C := by
  exact And.intro E.solutionDefinedClosed E.solutionUniqueClosed

end ClinicalMedicineEvidenceBasedMedicineFoundationCanonicalLaneLean
end HautevilleHouse