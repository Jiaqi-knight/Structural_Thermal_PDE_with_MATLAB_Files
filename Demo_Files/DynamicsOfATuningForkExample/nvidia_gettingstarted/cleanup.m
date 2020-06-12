if ~exist('currentfigures') || isempty(currentFigures), currentFigures = []; end;
close(setdiff(findall(0, 'type', 'figure'), currentFigures))
clear mex
delete *.mexw64
[~,~,~] = rmdir('C:\Users\Jiaqi-knight\Desktop\Structural_Thermal_PDE_with_MATLAB_Files\Demo_Files\DynamicsOfATuningForkExample\nvidia_gettingstarted\codegen','s');
clear
load old_workspace
delete old_workspace.mat
delete('C:\Users\Jiaqi-knight\Desktop\Structural_Thermal_PDE_with_MATLAB_Files\Demo_Files\DynamicsOfATuningForkExample\nvidia_gettingstarted\cleanup.m')
cd('C:\Users\Jiaqi-knight\Desktop\Structural_Thermal_PDE_with_MATLAB_Files\Demo_Files\DynamicsOfATuningForkExample')
rmdir('C:\Users\Jiaqi-knight\Desktop\Structural_Thermal_PDE_with_MATLAB_Files\Demo_Files\DynamicsOfATuningForkExample\nvidia_gettingstarted','s');
