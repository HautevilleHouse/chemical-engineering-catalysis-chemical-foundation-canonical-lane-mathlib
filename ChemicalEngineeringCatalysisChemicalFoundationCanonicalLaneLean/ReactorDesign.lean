import ChemicalEngineeringCatalysisChemicalFoundationCanonicalLaneLean.ThermodynamicsEquilibrium

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalFoundationCanonicalLaneLean

structure ReactorDesignPackage where
  plugFlowModel : Prop
  continuousStirredTank : Prop
  massBalance : Prop
  energyBalance : Prop
  catalystEffectivenessFactor : ℝ
  conversion : ℝ

structure ReactorDesignEvidence (R : ReactorDesignPackage) where
  plugFlowModelClosed : R.plugFlowModel
  continuousStirredTankClosed : R.continuousStirredTank
  massBalanceClosed : R.massBalance
  energyBalanceClosed : R.energyBalance
  effectivenessPositive : R.catalystEffectivenessFactor > 0

def ReactorDesignClosed (R : ReactorDesignPackage) : Prop :=
  R.plugFlowModel ∧ R.continuousStirredTank ∧ R.massBalance ∧ R.energyBalance ∧
  R.catalystEffectivenessFactor > 0

theorem reactor_design_closed_from_evidence (R : ReactorDesignPackage)
    (E : ReactorDesignEvidence R) : ReactorDesignClosed R := by
  exact And.intro E.plugFlowModelClosed
    (And.intro E.continuousStirredTankClosed
      (And.intro E.massBalanceClosed
        (And.intro E.energyBalanceClosed E.effectivenessPositive)))

end ChemicalEngineeringCatalysisChemicalFoundationCanonicalLaneLean
end HautevilleHouse