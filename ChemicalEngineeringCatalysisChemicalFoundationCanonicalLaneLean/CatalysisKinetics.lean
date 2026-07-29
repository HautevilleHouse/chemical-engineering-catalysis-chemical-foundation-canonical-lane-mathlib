import ChemicalEngineeringCatalysisChemicalFoundationCanonicalLaneLean.CatalysisAdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalFoundationCanonicalLaneLean

structure CatalysisKineticsPackage where
  langmuirHinshelwoodModel : Prop
  michaelisMentenKinetics : Prop
  temperatureDependence : Prop
  activationEnergy : ℝ
  rateConstant : ℝ
  reactionOrder : ℕ

structure CatalysisKineticsEvidence (K : CatalysisKineticsPackage) where
  langmuirHinshelwoodModelClosed : K.langmuirHinshelwoodModel
  michaelisMentenKineticsClosed : K.michaelisMentenKinetics
  temperatureDependenceClosed : K.temperatureDependence

def CatalysisKineticsClosed (K : CatalysisKineticsPackage) : Prop :=
  K.langmuirHinshelwoodModel ∧ K.michaelisMentenKinetics ∧ K.temperatureDependence

theorem catalysis_kinetics_closed_from_evidence (K : CatalysisKineticsPackage)
    (E : CatalysisKineticsEvidence K) : CatalysisKineticsClosed K := by
  exact And.intro E.langmuirHinshelwoodModelClosed
    (And.intro E.michaelisMentenKineticsClosed E.temperatureDependenceClosed)

end ChemicalEngineeringCatalysisChemicalFoundationCanonicalLaneLean
end HautevilleHouse