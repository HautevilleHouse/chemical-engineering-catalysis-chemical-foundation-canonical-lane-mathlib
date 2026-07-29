import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalFoundationCanonicalLaneLean

structure ThermodynamicsEquilibriumPackage where
  gibbsFreeEnergy : Type u
  equilibriumConstant : Prop
  vanHoffEquation : Prop
  thermodynamicConsistency : Prop
  phaseEquilibrium : Prop

structure ThermodynamicsEquilibriumEvidence (T : ThermodynamicsEquilibriumPackage) where
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  equilibriumConstantClosed : T.equilibriumConstant
  vanHoffEquationClosed : T.vanHoffEquation
  thermodynamicConsistencyClosed : T.thermodynamicConsistency
  phaseEquilibriumClosed : T.phaseEquilibrium

def ThermodynamicsEquilibriumClosed (T : ThermodynamicsEquilibriumPackage) : Prop :=
  T.gibbsFreeEnergy ∧ T.equilibriumConstant ∧ T.vanHoffEquation ∧
  T.thermodynamicConsistency ∧ T.phaseEquilibrium

theorem thermodynamics_equilibrium_closed_from_evidence (T : ThermodynamicsEquilibriumPackage) (E : ThermodynamicsEquilibriumEvidence T) :
    ThermodynamicsEquilibriumClosed T := by
  exact And.intro E.gibbsFreeEnergyClosed
    (And.intro E.equilibriumConstantClosed
      (And.intro E.vanHoffEquationClosed
        (And.intro E.thermodynamicConsistencyClosed E.phaseEquilibriumClosed)))

end ChemicalEngineeringCatalysisChemicalFoundationCanonicalLaneLean
end HautevilleHouse