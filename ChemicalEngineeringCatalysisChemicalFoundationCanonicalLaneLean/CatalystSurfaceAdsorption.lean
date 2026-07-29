import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalFoundationCanonicalLaneLean

structure CatalystSurfaceAdsorptionPackage where
  adsorptionIsotherm : Type u
  surfaceCoverage : Type v
  bindingEnergy : Type w
  langmuirModel : Prop
  competitiveAdsorption : Prop
  temperatureDependence : Prop

structure CatalystSurfaceAdsorptionEvidence (C : CatalystSurfaceAdsorptionPackage) where
  langmuirModelClosed : C.langmuirModel
  competitiveAdsorptionClosed : C.competitiveAdsorption
  temperatureDependenceClosed : C.temperatureDependence

def CatalystSurfaceAdsorptionClosed (C : CatalystSurfaceAdsorptionPackage) : Prop :=
  C.langmuirModel ∧ C.competitiveAdsorption ∧ C.temperatureDependence

theorem catalyst_surface_adsorption_closed_from_evidence (C : CatalystSurfaceAdsorptionPackage)
    (E : CatalystSurfaceAdsorptionEvidence C) : CatalystSurfaceAdsorptionClosed C := by
  exact And.intro E.langmuirModelClosed (And.intro E.competitiveAdsorptionClosed E.temperatureDependenceClosed)

end ChemicalEngineeringCatalysisChemicalFoundationCanonicalLaneLean
end HautevilleHouse