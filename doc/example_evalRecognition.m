%example_evalRecognition es un ejemplo básico del uso de la librería para
%evaluación de reconocimiento

%{
Laboratorio de Inteligencia y Visión Artificial
ESCUELA POLITÉCNICA NACIONAL
Quito - Ecuador

autor: z_tja
jonathan.a.zea@ieee.org

"I find that I don't understand things unless I try to program them."
-Donald E. Knuth

21 September 2020
Matlab 9.8.0.1417392 (R2020a) Update 4.
%}

%% NOTAS
% evaluamos 3 métricas:
% clasificación
% es 1 etiqueta!
%escalar

% reconocimiento
% es las etiquetas en los instantes de tiempo
% vector con estampa de tiempo

% tiempo de procesamiento
% el tiempo desde que recibió la señal (medición) hasta q imprimió en
% pantalla.
% vector para cada predicción.
% Tiempo real (opciones menor 300ms) (opciónes menor 100ms) con respecto a
% al percepción de la persona.


%% Configuración



%% 
% información original (no depende del modelo) (es parte de los datos)
repInfo.gestureName = categorical({'waveIn'}); 
% categorical es un tipo de dato


repInfo.groundTruth = false(1, 1000); % 1000 xq 200 Hz por 5 segundos
repInfo.groundTruth(200:400) = true;

plot(repInfo.groundTruth)


%% predicción
response.vectorOfLabels = categorical({'noGesture', 'noGesture', 'noGesture', 'waveIn', 'waveIn', 'noGesture'});
response.vectorOfTimePoints = [40 200 300 600 800 999]; %1xw double (entero)


response.vectorOfLabels = categorical({'noGesture'});
response.vectorOfTimePoints = [999]; %1xw double (entero)


% con un tic toc.
% tiempo de procesamiento (segundos)
response.vectorOfProcessingTimes = [0.1 0.1 0.1 0.1 0.1 0.1]; % 1xw double

% no necesariamente depende del vector de arriba
response.class = categorical({'waveIn'}); % adivinamos q es waveIn

%%
r1 = evalRecognition(repInfo, response)



