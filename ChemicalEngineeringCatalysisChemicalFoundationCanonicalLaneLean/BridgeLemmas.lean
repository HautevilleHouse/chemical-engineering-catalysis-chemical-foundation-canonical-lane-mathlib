import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  (∃ (R : ReactionKineticsPackage), ReactionKineticsClosed R) ∧
  (∃ (M : MolecularOrbitalTheoryPackage), MolecularOrbitalTheoryClosed M) ∧
  (∃ (T : ThermodynamicsPackage), ThermodynamicsClosed T) ∧
  (∃ (E : ChemicalEquilibriumPackage), ChemicalEquilibriumClosed E) ∧
  (∃ (C : CatalysisMechanismPackage), CatalysisMechanismClosed C)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  refine And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ ?_)))
  · refine ⟨?_, ?_⟩
    exact A.object.conclusion
  · refine ⟨?_, ?_⟩
    exact A.object.conclusion
  · refine ⟨?_, ?_⟩
    exact A.object.conclusion
  · refine ⟨?_, ?_⟩
    exact A.object.conclusion
  · refine ⟨?_, ?_⟩
    exact A.object.conclusion

end ChemicalEngineeringCatalysisChemicalFoundationCanonicalLaneLean
end HautevilleHouse