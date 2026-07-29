import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineEvidenceBasedMedicineFoundationCanonicalLaneLean

structure CompartmentModelPackage where
  numCompartments : Nat
  volumeOfDistribution : Nat -> ℝ
  eliminationRate : Nat -> ℝ
  transferRates : Nat -> Nat -> ℝ
  initialConcentration : Nat -> ℝ
  doseRegimen : Nat -> ℝ
  concentrationTimeCourse : Nat -> ℝ -> ℝ
  compartmentDynamics : Prop
  massBalanceEquations : Prop
  steadyStateCondition : Prop
  linearTimeInvariance : Prop
  dosageAdjustmentRule : Prop

structure CompartmentModelEvidence (P : CompartmentModelPackage) where
  compartmentDynamicsClosed : P.compartmentDynamics
  massBalanceEquationsClosed : P.massBalanceEquations
  steadyStateConditionClosed : P.steadyStateCondition
  linearTimeInvarianceClosed : P.linearTimeInvariance
  dosageAdjustmentRuleClosed : P.dosageAdjustmentRule

def CompartmentModelClosed (P : CompartmentModelPackage) : Prop :=
  P.compartmentDynamics ∧ P.massBalanceEquations ∧ P.steadyStateCondition ∧ P.linearTimeInvariance ∧ P.dosageAdjustmentRule

theorem compartmentModel_closed_from_evidence (P : CompartmentModelPackage) (E : CompartmentModelEvidence P) : CompartmentModelClosed P := by
  exact And.intro E.compartmentDynamicsClosed
    (And.intro E.massBalanceEquationsClosed
      (And.intro E.steadyStateConditionClosed
        (And.intro E.linearTimeInvarianceClosed E.dosageAdjustmentRuleClosed)))

end ClinicalMedicineEvidenceBasedMedicineFoundationCanonicalLaneLean
end HautevilleHouse