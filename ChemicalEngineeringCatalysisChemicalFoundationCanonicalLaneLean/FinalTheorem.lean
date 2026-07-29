import canonicalLaneMathlib.AdmissibleClass
import ChemicalEngineeringCatalysisChemicalFoundationCanonicalLaneLean.BridgeLemmas
import ChemicalEngineeringCatalysisChemicalFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalFoundationCanonicalLaneLean

def ConstrainedCatalysisClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_catalysis_endgame (A : AdmissibleClass) :
    ConstrainedCatalysisClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ChemicalEngineeringCatalysisChemicalFoundationCanonicalLaneLean
end HautevilleHouse