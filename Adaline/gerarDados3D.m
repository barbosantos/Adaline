function [data] = gerarDados3D()
%Gera e plota os dados tridimensionais
    
    %Criando os vetores de pontos da função com ruídos adicionados
    x = linspace(0,10,1000)';
    y = 10*rand(1000,1);
    z = 2*x - y + (3*rand(size(x)) - 1.5);

    %Normalizando os dados
    dataNorma = normalizacao([x y z]);
    
    %Concatenando com vetor de -1's
    data = [-ones(length(dataNorma), 1) dataNorma];
    
    %Plotagem
    figure(2);
    scatter3(data(:,2), data(:,3), data(:,4), '.r')
    hold on;
    
end

