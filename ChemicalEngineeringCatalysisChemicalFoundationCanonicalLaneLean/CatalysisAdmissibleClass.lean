import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalFoundationCanonicalLaneLean

structure CatalysisAdmissibleObject where
  surface : Type
  activeSite : surface → Prop
  turnoverFrequency : ℝ
  activationEnergy : ℝ
  rateExpression : Prop
  conclusion : rateExpression

structure AdmissibleClass where
  object : CatalysisAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def CatalysisWitnessClosed (O : CatalysisAdmissibleObject) : Prop :=
  O.rateExpression

end ChemicalEngineeringCatalysisChemicalFoundationCanonicalLaneLean
end HautevilleHouse