import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalFoundationCanonicalLaneLean

structure CatalysisMechanismsPackage where
  activeSite : Prop
  adsorptionIsotherm : Prop
  langmuirHinshelwoodModel : Prop
  eyringEquation : Prop
  turnOverFrequency : Prop

structure CatalysisMechanismsEvidence (C : CatalysisMechanismsPackage) where
  activeSiteClosed : C.activeSite
  adsorptionIsothermClosed : C.adsorptionIsotherm
  langmuirHinshelwoodModelClosed : C.langmuirHinshelwoodModel
  eyringEquationClosed : C.eyringEquation
  turnOverFrequencyClosed : C.turnOverFrequency

def CatalysisMechanismsClosed (C : CatalysisMechanismsPackage) : Prop :=
  C.activeSite ∧ C.adsorptionIsotherm ∧ C.langmuirHinshelwoodModel ∧ C.eyringEquation ∧ C.turnOverFrequency

theorem catalysis_mechanisms_closed_from_evidence (C : CatalysisMechanismsPackage) (E : CatalysisMechanismsEvidence C) :
    CatalysisMechanismsClosed C := by
  exact And.intro E.activeSiteClosed
    (And.intro E.adsorptionIsothermClosed
      (And.intro E.langmuirHinshelwoodModelClosed
        (And.intro E.eyringEquationClosed E.turnOverFrequencyClosed)))

end ChemicalEngineeringCatalysisChemicalFoundationCanonicalLaneLean
end HautevilleHouse