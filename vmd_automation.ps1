# Powershell execution script
## powershell -ExecutionPolicy Bypass "& ""C:\Users\Davindra\Desktop\Research\Scripts\vmd\VMD-Automation\vmd_automation.ps1"""

# # Specify path 
$path_sequences = 'C:\Users\Davindra\Desktop\Research\aggregation_study\vesicles_with_loops\'
$files = Get-ChildItem $path_sequences
# # Can manually specify list of files/sequences to study or automate it as demonstrated here

Foreach($file in $files)
{
 $sequence = $file.FullName.replace($path_sequences, "")
 $sequence = $sequence.replace("trajectory_GA_", "")
 $sequence = $sequence.replace("_T1000_10000.lammpstrj", "")
 & "C:\Program Files (x86)\University of Illinois\VMD\vmd.exe" $file.FullName -e tcl_render.tcl -args $sequence
}
