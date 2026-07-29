import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalFoundationCanonicalLaneLean

structure CatalyticReactionMechanismPackage where
  elementarySteps : Type u
  rateDeterminingStep : Type v
  intermediateSpecies : Type w
  mechanismValidity : Prop
  steadyStateApproximation : Prop
  rateLawDerivation : Prop

structure CatalyticReactionMechanismEvidence (C : CatalyticReactionMechanismPackage) where
  mechanismValidityClosed : C.mechanismValidity
  steadyStateApproximationClosed : C.steadyStateApproximation
  rateLawDerivationClosed : C.rateLawDerivation

def CatalyticReactionMechanismClosed (C : CatalyticReactionMechanismPackage) : Prop :=
  C.mechanismValidity ∧ C.steadyStateApproximation ∧ C.rateLawDerivation

theorem catalytic_reaction_mechanism_closed_from_evidence (C : CatalyticReactionMechanismPackage)
    (E : CatalyticReactionMechanismEvidence C) : CatalyticReactionMechanismClosed C := by
  exact And.intro E.mechanismValidityClosed (And.intro E.steadyStateApproximationClosed E.rateLawDerivationClosed)

end ChemicalEngineeringCatalysisChemicalFoundationCanonicalLaneLean
end HautevilleHouse