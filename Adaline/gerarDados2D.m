function [data] = gerarDados2D()
%Gera e plota os dados bidimensionais

    x = linspace(0,10,200);
    %Criando os pontos o vetor de pontos da função com ruídos adicionados
    y = 2*x + 5 + (rand(size(x)) - 0.5);

    %Normalizando os dados
    dataNorma = normalizacao([x' y']);
    
    %Concatenando com vetor de -1's
    data = [-ones(length(dataNorma), 1) dataNorma];
    
    %Plotagem
    figure(1);
    scatter(data(:,2), data(:,3), '.r');
    hold on;
    
end
