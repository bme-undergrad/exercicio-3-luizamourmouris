function [mu] = exercicio3(t, NC)

% t: vetor de tempo com instâncias das medições
% NC: medida do número de células a cada instante t

%%%%%%%%%%%%%%%%%%%%%%%%%%

% Garante que t comece em zero
  t = t - t(1);

  % Transforma os dados em log natural
  Y = log(NC);

  % Ajuste linear das primeiras duas horas
  idx1 = find(t <= 2);
  p1 = polyfit(t(idx1), Y(idx1), 1);
  mu1 = p1(1);

  % Ajuste linear das ultimas quatro horas 
  idx2 = find(t >= 2.5);
  p2 = polyfit(t(idx2), Y(idx2), 1);
  mu2 = p2(1);

  % Exibindo os resultados 
  printf("Taxa de crescimento nas primeiras 2h: %.4f 1/h\n", mu1);
  printf("Taxa de crescimento nas próximas 4h: %.4f 1/h\n", mu2);


% mantenha essas duas linhas finais, subtituindo mu pelo valor que você calculou
mu = [mu1; mu2]

%%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction
