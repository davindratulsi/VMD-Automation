# Powershell execution script
## powershell -ExecutionPolicy Bypass "& ""C:\Users\Davindra\Desktop\Research\Scripts\vmd\automation\vmd_automation.ps1"""

$sequences = 'A10', 'A9B1', 'A8B2', 'A7B3', 'A6B4',
'A5B5', 'A4B6', 'A3B7', 'A2B8', 'A1B9'

# $sequences = '00000', '00001', '00011', '00111', '01111'

# $sequences = '0000000000', '0000000001', '0000000011', '0000000111', '0000001111',
# '0000011111', '0000111111', '0001111111', '0011111111', '0111111111'

# $sequences = '000000000000000000', '000000000000000001', '000000000000000011', '000000000000000111', '000000000000001111',
# '000000000000011111', '000000000000111111', '000000000001111111', '000000000011111111', '000000000111111111', '000000001111111111',
# '000000111111111111', '000000111111111111', '000001111111111111', '000011111111111111', '000111111111111111', '001111111111111111',
# '011111111111111111'

Foreach($sequence in $sequences)
{
 $file = 'C:\Users\Davindra\Desktop\Research\Stiffness_Study\standard_fene\eps_1.5_k_3.0\trajectory_GA_10mers_eps_1.5_k_3.0_standardfene_route0_000_' + $sequence + '_T1000_10000.lammpstrj'
 & "C:\Program Files (x86)\University of Illinois\VMD\vmd.exe" $file -e tcl_render.tcl -args $sequence
}

