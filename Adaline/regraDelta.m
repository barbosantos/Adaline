function [theta, SE] = regraDelta(X, y, theta, alpha, num_epocas)
%Retorna o vetor de pesos e um vetor com os erros
%quadraticos de cada epoca

    for iter = 1:num_epocas   
        
        for i = 1:length(y)               
            erro(i) = y(i) - theta*X(i,:)';
            theta = theta + alpha*erro(i)*X(i,:);          
        end
        
     %Embaralha ao final de cada epoca
        [X, y] = embaralha([X y]);
        
     %Erro quadratico
        SE(iter) = sum(erro.^2);
 
    end
    
end
