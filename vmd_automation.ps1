# Powershell execution script
## powershell -ExecutionPolicy Bypass "& ""C:\Users\Davindra\Desktop\Research\Scripts\vmd\automation\vmd_automation.ps1"""

$sequences = 'A10', 'A9B1', 'A8B2', 'A7B3', 'A6B4',
'A5B5', 'A4B6', 'A3B7', 'A2B8', 'A1B9'

Foreach($sequence in $sequences)
{
 $file = 'C:\Users\Davindra\Desktop\Research\Stiffness_Study\standard_fene\eps_1.5_k_3.0\trajectory_GA_10mers_eps_1.5_k_3.0_standardfene_route0_000_' + $sequence + '_T1000_10000.lammpstrj'
 & "C:\Program Files (x86)\University of Illinois\VMD\vmd.exe" $file -e tcl_render.tcl -args $sequence
}

