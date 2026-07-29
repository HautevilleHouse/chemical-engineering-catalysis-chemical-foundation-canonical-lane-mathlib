import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalFoundationCanonicalLaneLean

structure CatalysisMechanismPackage where
  catalystActiveSiteIdentified : Prop
  adsorptionDesorptionStepsModeled : Prop
  surfaceReactionStepsModeled : Prop
  rateDeterminingStepIdentified : Prop
  turnoverFrequencyCalculated : Prop

structure CatalysisMechanismEvidence (C : CatalysisMechanismPackage) where
  catalystActiveSiteIdentifiedClosed : C.catalystActiveSiteIdentified
  adsorptionDesorptionStepsModeledClosed : C.adsorptionDesorptionStepsModeled
  surfaceReactionStepsModeledClosed : C.surfaceReactionStepsModeled
  rateDeterminingStepIdentifiedClosed : C.rateDeterminingStepIdentified
  turnoverFrequencyCalculatedClosed : C.turnoverFrequencyCalculated

def CatalysisMechanismClosed (C : CatalysisMechanismPackage) : Prop :=
  C.catalystActiveSiteIdentified ∧ C.adsorptionDesorptionStepsModeled ∧
  C.surfaceReactionStepsModeled ∧ C.rateDeterminingStepIdentified ∧
  C.turnoverFrequencyCalculated

theorem catalysis_mechanism_closed_from_evidence
    (C : CatalysisMechanismPackage) (E : CatalysisMechanismEvidence C) :
    CatalysisMechanismClosed C := by
  exact And.intro E.catalystActiveSiteIdentifiedClosed
    (And.intro E.adsorptionDesorptionStepsModeledClosed
      (And.intro E.surfaceReactionStepsModeledClosed
        (And.intro E.rateDeterminingStepIdentifiedClosed
          E.turnoverFrequencyCalculatedClosed)))

end ChemicalEngineeringCatalysisChemicalFoundationCanonicalLaneLean
end HautevilleHouse