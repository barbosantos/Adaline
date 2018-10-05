function [X, y] = embaralha(data)
%Função que embaralha os dados
data = data(randperm(length(data)), :);


X = data(:, 1:end-1);
y = data(:, end);
end

