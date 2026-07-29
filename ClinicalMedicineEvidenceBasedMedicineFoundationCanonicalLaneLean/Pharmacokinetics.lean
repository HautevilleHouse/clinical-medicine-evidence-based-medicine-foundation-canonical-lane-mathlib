import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineEvidenceBasedMedicineFoundationCanonicalLaneLean

structure PharmacokineticsPackage where
  absorptionRate : Float
  distributionVolume : Float
  eliminationRate : Float
  plasmaConcentrationCurve : Prop
  halfLife : Prop
  bioavailability : Prop

structure PharmacokineticsEvidence (P : PharmacokineticsPackage) where
  plasmaConcentrationCurveClosed : P.plasmaConcentrationCurve
  halfLifeClosed : P.halfLife
  bioavailabilityClosed : P.bioavailability

def PharmacokineticsClosed (P : PharmacokineticsPackage) : Prop :=
  P.plasmaConcentrationCurve ∧ P.halfLife ∧ P.bioavailability

theorem pharmacokinetics_closed_from_evidence (P : PharmacokineticsPackage) (E : PharmacokineticsEvidence P) :
    PharmacokineticsClosed P := by
  exact And.intro E.plasmaConcentrationCurveClosed
    (And.intro E.halfLifeClosed E.bioavailabilityClosed)

end ClinicalMedicineEvidenceBasedMedicineFoundationCanonicalLaneLean
end HautevilleHouse