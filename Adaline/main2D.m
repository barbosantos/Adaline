%% Limpar e Fechar figuras

clear all; close all; clc

%% Parte 1: Geração e Normalização dos dados

%Dados bidimensionais
data = gerarDados2D();

fprintf('Program paused. Press enter to continue.\n');
pause;

%% Parte 2: Gradiente Descendente

realizacoes = 20;
eta = 0.01;
num_epocas = 200;

% Inicializando theta e executando a regra delta
theta = rand(1, 2);

for i = 1:realizacoes
    %embaralhar dados aqui
    [X, y] = embaralha(data);
    %theta atualizado e valor do custo
    [theta, SE] = regraDelta(X, y, theta, eta, num_epocas);

    MSE(i) = mean(SE);
    RMSE(i) = sqrt(MSE(i));

end

fprintf('\nMédia do RMSE: %f\n', mean(RMSE));
fprintf('Desvio Padrão do RMSE: %f\n', std(RMSE));

%Plotagem da reta de regressao
plot(data(:,2),data(:, 1:end-1)*theta','b')
legend('Training data', 'Linear regression')

hold off

