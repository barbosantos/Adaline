function [dataNorma] = normalizacao(data)
    %Funcao de normalizacao dos dados
    
    menor = repmat(min(data), length(data), 1);
    maior = repmat(max(data), length(data), 1);
    dataNorma  = (data - menor) ./ (maior - menor);

end

