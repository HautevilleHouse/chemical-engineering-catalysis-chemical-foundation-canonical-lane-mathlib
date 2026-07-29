import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalFoundationCanonicalLaneLean

structure ChemicalEquilibriumPackage where
  lawOfMassAction : Prop
  equilibriumExpression : Prop
  reactionQuotient : Prop
  leChatelierPrinciple : Prop
  temperatureDependence : Prop

structure ChemicalEquilibriumEvidence (C : ChemicalEquilibriumPackage) where
  lawOfMassActionClosed : C.lawOfMassAction
  equilibriumExpressionClosed : C.equilibriumExpression
  reactionQuotientClosed : C.reactionQuotient
  leChatelierPrincipleClosed : C.leChatelierPrinciple
  temperatureDependenceClosed : C.temperatureDependence

def ChemicalEquilibriumClosed (C : ChemicalEquilibriumPackage) : Prop :=
  C.lawOfMassAction ∧ C.equilibriumExpression ∧ C.reactionQuotient ∧ C.leChatelierPrinciple ∧ C.temperatureDependence

theorem chemical_equilibrium_closed_from_evidence (C : ChemicalEquilibriumPackage) (E : ChemicalEquilibriumEvidence C) :
    ChemicalEquilibriumClosed C := by
  exact And.intro E.lawOfMassActionClosed
    (And.intro E.equilibriumExpressionClosed
      (And.intro E.reactionQuotientClosed
        (And.intro E.leChatelierPrincipleClosed E.temperatureDependenceClosed)))

end ChemicalEngineeringCatalysisChemicalFoundationCanonicalLaneLean
end HautevilleHouse