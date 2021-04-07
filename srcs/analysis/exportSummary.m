function exportSummary(statsTable, fieldName, options, ...
    classAvg, classStd, recogAvg, recogStd, timeAvg, timeStd)
% exportSummary a�ade en el archivo "summary" el resumen de la
% statsTable dada. Imprime en consola y guarda en archivo text. Si
% fieldName est� vac�o, saca resultados generales!
%
% Inputs
% statsTable    (n, 8) table: n clases, name, cuenta, mean, class,
%               recog,
%
% Outputs
%
% Ejemplo
%     = exportSummary()
%

if isempty(fieldName)
    %% resultados generales
    
    if options.save
        outputFile = [options.outputFolder '\summary.txt'];
        fid = fopen(outputFile, 'w');
    end
    
    print('Laboratorio de Inteligencia y Visi�n Artificial\n')
    print('Escuela Polit�cnica Nacional\n')
    print('Quito-Ecuador\n')
    print('\n')
    print('by Jonathan A. Zea\n')
    print('\n')
    print('===========================================\n')
    print('MAIN RESULTS\n')
    print('===========================================\n')
    print('%s\n', datestr(datetime))
    
    print('classification Accuracy: %.2f%% \x00B1 %.2f%%\t\trecognition Accuracy: %.2f%% \x00B1 %.2f%%\n', ...
        classAvg, classStd, recogAvg, recogStd);
    
    print('time: %.6g \x00B1 %.6g [s]\n\n\n', timeAvg, timeStd)
    
    return
end

%% Resultados espec�ficos
if options.save
    outputFile = [options.outputFolder '\summary.txt'];
    fid = fopen(outputFile, 'a');
end


print('============================\n');
print('Results: %s\n', fieldName);
print('============================\n');
for it = 1:size(statsTable, 1)
    nameClass = statsTable.(fieldName)(it);
    if isnumeric(nameClass) || islogical(nameClass)
        nameClass = num2str(nameClass);
    end
    print('\ttype: %s\t\tcount: %d\t\tclass: %.2f%% \x00B1 %.2f%%\t\trecog: %.2f%% \x00B1 %.2f%%\n', ...
        nameClass, statsTable.GroupCount(it), statsTable.mean_class(it)...
        , statsTable.std_class(it), statsTable.mean_recog(it),...
        statsTable.std_recog(it));
end
print('\n')

if options.save
    fclose(fid);
end

    function print(varargin)
        % print solo repite fprintf en consola y en archivo
        %
        % Inputs
        % var1    descripci�n
        %
        % Outputs
        % nameUser    salida descripci�n
        %
        % Ejemplo
        %     = print()
        %
        
        %%
        if options.save
            fprintf(fid, varargin{:});
        end
        fprintf(varargin{:});
    end

end

