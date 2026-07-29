import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalFoundationCanonicalLaneLean

structure ThermodynamicsPackage where
  deltaG : Prop
  deltaH : Prop
  deltaS : Prop
  equilibriumConstant : Prop
  gibbsFreeEnergyRelation : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  deltaGClosed : T.deltaG
  deltaHClosed : T.deltaH
  deltaSClosed : T.deltaS
  equilibriumConstantClosed : T.equilibriumConstant
  gibbsFreeEnergyRelationClosed : T.gibbsFreeEnergyRelation

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.deltaG ∧ T.deltaH ∧ T.deltaS ∧ T.equilibriumConstant ∧ T.gibbsFreeEnergyRelation

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage) (E : ThermodynamicsEvidence T) :
    ThermodynamicsClosed T := by
  exact And.intro E.deltaGClosed
    (And.intro E.deltaHClosed
      (And.intro E.deltaSClosed
        (And.intro E.equilibriumConstantClosed E.gibbsFreeEnergyRelationClosed)))

end ChemicalEngineeringCatalysisChemicalFoundationCanonicalLaneLean
end HautevilleHouse