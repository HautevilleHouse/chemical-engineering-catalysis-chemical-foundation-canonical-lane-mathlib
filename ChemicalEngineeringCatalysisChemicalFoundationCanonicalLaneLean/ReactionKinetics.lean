import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalFoundationCanonicalLaneLean

structure ReactionKineticsPackage where
  rateExpression : Type u
  activationEnergy : Prop
  preExponentialFactor : Prop
  thermodynamicsConsistency : Prop
  mechanismValid : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  rateExpressionClosed : R.rateExpression
  activationEnergyClosed : R.activationEnergy
  preExponentialFactorClosed : R.preExponentialFactor
  thermodynamicsConsistencyClosed : R.thermodynamicsConsistency
  mechanismValidClosed : R.mechanismValid

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.rateExpression ∧ R.activationEnergy ∧ R.preExponentialFactor ∧
  R.thermodynamicsConsistency ∧ R.mechanismValid

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage) (E : ReactionKineticsEvidence R) :
    ReactionKineticsClosed R := by
  exact And.intro E.rateExpressionClosed
    (And.intro E.activationEnergyClosed
      (And.intro E.preExponentialFactorClosed
        (And.intro E.thermodynamicsConsistencyClosed E.mechanismValidClosed)))

end ChemicalEngineeringCatalysisChemicalFoundationCanonicalLaneLean
end HautevilleHouse