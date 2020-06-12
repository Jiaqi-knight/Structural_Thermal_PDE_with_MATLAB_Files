clc;clear;close all
model = createpde('structural','modal-solid');
importGeometry(model,'TuningFork.stl');
figure
pdegplot(model)
E = 210E9;
nu = 0.33;
rho = 7850;
structuralProperties(model,'YoungsModulus',E, ...
                           'PoissonsRatio',nu, ...
                           'MassDensity',rho);
mesh =generateMesh(model,'Hmax',0.02);   
figure
pdemesh(model)
 
RF = solve(model,'FrequencyRange',[-1,4000]*2*pi);
modeID = 1:numel(RF.NaturalFrequencies);
tmodalResults = table(modeID.',RF.NaturalFrequencies/2/pi);
tmodalResults.Properties.VariableNames = {'Mode','Frequency'};
disp(tmodalResults);
figure
frames  = animateSixTuningForkModes(RF);