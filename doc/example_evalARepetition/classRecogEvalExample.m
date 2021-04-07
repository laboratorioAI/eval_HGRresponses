clearvars
close all
clc

%% EJEMPLOS CON CLASIFICACIONES CORRECTAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EJEMPLO I.i Clase predicha correcta! Clase equivalente correcta.
% solapamiento insuficiente
%-----------------------------------------
% flags
flags.plot = true;

% sysParameters
defaultGesture = 6;

sysParameters.defaultGesture = defaultGesture; % 6 (noGesto). OPCIONAL!

% classification
classPrediction = 3;
trueClass = 3;

% predictionMatrix
timestamp = 0.1:0.1:5;
predictionsVector = ones(1, length(timestamp)) * 6;
predictionsVector(28:33) = classPrediction;
predictionMatrix = [predictionsVector; timestamp];

% ground truth
iI = 200;
iO = 600;
groundTruth = zeros(1, 1000) * 6;
groundTruth(iI: iO) = 1;




[classResult, recogResult, overlappingFactor]  = evalRecognition(groundTruth, trueClass, predictionMatrix, classPrediction, sysParameters, flags)


%% EJEMPLO I.ii Clase predicha correcta! Clase equivalente correcta.
% solapamiento suficiente

% flags
flags.plot = true;

% sysParameters
defaultGesture = 6;

sysParameters.defaultGesture = defaultGesture; % 6 (noGesto). OPCIONAL!

% classification
classPrediction = 3;
trueClass = 3;

% predictionMatrix
timestamp = 0.1:0.1:5;
predictionsVector = ones(1, length(timestamp)) * 6;
predictionsVector(23:26) = classPrediction;
predictionMatrix = [predictionsVector; timestamp];

% ground truth
iI = 380;
iO = 460;
groundTruth = zeros(1, 1000) * 6;
groundTruth(iI: iO) = 1;




[classResult, recogResult, overlappingFactor]  = evalRecognition(groundTruth, trueClass, predictionMatrix, classPrediction, sysParameters, flags)


%% EJEMPLO I.iii Clase predicha correcta! Clase equivalente correcta.
% no solapamiento

% flags
flags.plot = true;

% sysParameters
defaultGesture = 6;

sysParameters.defaultGesture = defaultGesture; % 6 (noGesto). OPCIONAL!

% classification
classPrediction = 3;
trueClass = 3;

% predictionMatrix
timestamp = 0.1:0.1:5;
predictionsVector = ones(1, length(timestamp)) * 6;
predictionsVector(35:43) = classPrediction;
predictionMatrix = [predictionsVector; timestamp];

% ground truth
iI = 200;
iO = 600;
groundTruth = zeros(1, 1000) * 6;
groundTruth(iI: iO) = 1;



[classResult, recogResult, overlappingFactor]  = evalRecognition(groundTruth, trueClass, predictionMatrix, classPrediction, sysParameters, flags)


%% EJEMPLO I.iv Clase predicha correcta! Clase equivalente correcta.
% solapamiento completo

% flags
flags.plot = true;

% sysParameters
defaultGesture = 6;

sysParameters.defaultGesture = defaultGesture; % 6 (noGesto). OPCIONAL!

% classification
classPrediction = 3;
trueClass = 3;

% predictionMatrix
timestamp = 0.1:0.1:5;
predictionsVector = ones(1, length(timestamp)) * 6;
predictionsVector(11:30) = classPrediction;
predictionMatrix = [predictionsVector; timestamp];

% ground truth
iI = 200;
iO = 600;
groundTruth = zeros(1, 1000) * 6;
groundTruth(iI: iO) = 1;




[classResult, recogResult, overlappingFactor]  = evalRecognition(groundTruth, trueClass, predictionMatrix, classPrediction, sysParameters, flags)


%% EJEMPLO I.v Clase predicha correcta! Clase equivalente correcta.
% solapamiento excesivo

% flags
flags.plot = true;

% sysParameters
defaultGesture = 6;

sysParameters.defaultGesture = defaultGesture; % 6 (noGesto). OPCIONAL!

% classification
classPrediction = 3;
trueClass = 3;

% predictionMatrix
timestamp = 0.1:0.1:5;
predictionsVector = ones(1, length(timestamp)) * 6;
predictionsVector(10:40) = classPrediction;
predictionMatrix = [predictionsVector; timestamp];

% ground truth
iI = 380;
iO = 460;
groundTruth = zeros(1, 1000) * 6;
groundTruth(iI: iO) = 1;




[classResult, recogResult, overlappingFactor]  = evalRecognition(groundTruth, trueClass, predictionMatrix, classPrediction, sysParameters, flags)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% EJEMPLOS CON CLASIFICACIONES INCORRECTAS
% EJEMPLO II. Clase predicha correcta! Clase equivalente incorrecta
%-----------------------------------------
% flags
flags.plot = true;

% sysParameters
defaultGesture = 6;

sysParameters.defaultGesture = defaultGesture; % 6 (noGesto). OPCIONAL!

% classification
classPrediction = 3;
trueClass = 3;

% predictionMatrix
timestamp = 0.1:0.1:5;
predictionsVector = ones(1, length(timestamp)) * 6;
predictionsVector(28:43) = 2;
predictionMatrix = [predictionsVector; timestamp];

% ground truth
iI = 200;
iO = 600;
groundTruth = zeros(1, 1000) * 6;
groundTruth(iI: iO) = 1;




[classResult, recogResult, overlappingFactor]  = evalRecognition(groundTruth, trueClass, predictionMatrix, classPrediction, sysParameters, flags)


%% EJEMPLO III. Clase predicha incorrecta! Clase equivalente correcta
% flags
flags.plot = true;

% sysParameters
defaultGesture = 6;

sysParameters.defaultGesture = defaultGesture; % 6 (noGesto). OPCIONAL!

% classification
classPrediction = 2;
trueClass = 3;

% predictionMatrix
timestamp = 0.1:0.1:5;
predictionsVector = ones(1, length(timestamp) - 3) * 6;
predictionsVector(28:43) = trueClass;
predictionMatrix = [predictionsVector; timestamp(1:end - 3)];

% ground truth
iI = 200;
iO = 600;
groundTruth = zeros(1, 1000) * 6;
groundTruth(iI: iO) = 1;




[classResult, recogResult, overlappingFactor]  = evalRecognition(groundTruth, trueClass, predictionMatrix, classPrediction, sysParameters, flags)

%% EJEMPLO IV. Clase predicha incorrecta! Clase equivalente incorrecta
% flags
flags.plot = true;

% sysParameters
defaultGesture = 6;

sysParameters.defaultGesture = defaultGesture; % 6 (noGesto). OPCIONAL!

% classification
classPrediction = 2;
trueClass = 3;

% predictionMatrix
timestamp = 0.1:0.1:5;
predictionsVector = ones(1, length(timestamp)) * 6;
predictionsVector(28:43) = classPrediction;
predictionMatrix = [predictionsVector; timestamp];

% ground truth
iI = 200;
iO = 600;
groundTruth = zeros(1, 1000) * 6;
groundTruth(iI: iO) = 1;


[classResult, recogResult, overlappingFactor]  = evalRecognition(groundTruth, trueClass, predictionMatrix, classPrediction, sysParameters, flags)

%% EJEMPLO V. Clase predicha incorrecta! Clase equivalente incorrecta
% flags
flags.plot = true;

% sysParameters
defaultGesture = 6;

sysParameters.defaultGesture = defaultGesture; % 6 (noGesto). OPCIONAL!

% classification
classPrediction = 6;
trueClass = 6;

% predictionMatrix
timestamp = 0.1:0.1:5;
predictionsVector = ones(1, length(timestamp)) * 6;
predictionsVector(28:43) = 4;
predictionMatrix = [predictionsVector; timestamp];

% ground truth
groundTruth = [];


[classResult, recogResult, overlappingFactor]  = evalRecognition(groundTruth, trueClass, predictionMatrix, classPrediction, sysParameters, flags)


