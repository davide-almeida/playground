def soma_matrizes(matriz1, matriz2)
  # Verifica se as matrizes têm o mesmo tamanho (incluindo o primeiro elemento)
  unless matriz1.length == matriz2.length && matriz1[0].length == matriz2[0].length
    return [:error, "As matrizes têm tamanhos diferentes e não podem ser somadas =("]
  end

  # Inicializa uma matriz de resultados com zeros
  resultado = Array.new(matriz1.length) { Array.new(matriz1[0].length, 0) }

  # Percorre as matrizes e some os elementos correspondentes
  matriz1.each_with_index do |linha, i|
    linha.each_with_index do |elemento, j|
      resultado[i][j] = elemento + matriz2[i][j]
    end
  end

  return [:ok, resultado]
end

# Matrizes utilizadas
matriz1 = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]

matriz2 = [
  [1, 2, 3],
  [1, 2, 3],
  [1, 2, 3]
]

resultado = soma_matrizes(matriz1, matriz2)

case resultado
in [:error, mensagem]
  puts mensagem
in [:ok, resultado]
  # Exibe o resultado
  resultado.each do |linha|
    puts linha.join(' ')
  end
end