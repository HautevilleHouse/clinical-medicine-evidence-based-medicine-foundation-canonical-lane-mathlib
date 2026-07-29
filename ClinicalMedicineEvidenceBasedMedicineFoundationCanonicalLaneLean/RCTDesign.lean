import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineEvidenceBasedMedicineFoundationCanonicalLaneLean

structure RCTDesignPackage where
  randomizationMethod : Prop
  blinding : Prop
  controlGroup : Prop
  sampleSizeCalculation : Prop
  primaryEndpoint : Prop
  statisticalAnalysisPlan : Prop

structure RCTDesignEvidence (R : RCTDesignPackage) where
  randomizationMethodClosed : R.randomizationMethod
  blindingClosed : R.blinding
  controlGroupClosed : R.controlGroup
  sampleSizeCalculationClosed : R.sampleSizeCalculation
  primaryEndpointClosed : R.primaryEndpoint
  statisticalAnalysisPlanClosed : R.statisticalAnalysisPlan

def RCTDesignClosed (R : RCTDesignPackage) : Prop :=
  R.randomizationMethod ∧ R.blinding ∧ R.controlGroup ∧
  R.sampleSizeCalculation ∧ R.primaryEndpoint ∧ R.statisticalAnalysisPlan

theorem rct_design_closed_from_evidence (R : RCTDesignPackage) (E : RCTDesignEvidence R) :
    RCTDesignClosed R := by
  exact And.intro E.randomizationMethodClosed
    (And.intro E.blindingClosed
      (And.intro E.controlGroupClosed
        (And.intro E.sampleSizeCalculationClosed
          (And.intro E.primaryEndpointClosed E.statisticalAnalysisPlanClosed))))

end ClinicalMedicineEvidenceBasedMedicineFoundationCanonicalLaneLean
end HautevilleHouse