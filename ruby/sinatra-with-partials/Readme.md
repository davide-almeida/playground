# Sinatra-with-partials
Este projeto é um exemplo de como utilizar a mesma sintaxe do rails para implementar partials no sinatra. Essa demanda surgiu em uma determinada situação para ajudar um amigo e decidi compartilhar aqui.

## Requisitos
- Make
- Docker
- Docker-compose

## Como executar a aplicação
```bash
make run
```

## Outros comandos disponíveis
Acessar o bash:
```bash
make bash
```

Acessar os logs:
```bash
make logs
```

## Observações
A estratégia adotada foi escrever um método chamado partial, que recebe o path do arquivo a ser renderizado. Além disso, esse método concatena o `_` após a última `/` e o `.html` no final do nome. Não foi necessário adicionar o `.erb` no final porque o sinatra já faz isso.

Como alternativa pode ser utilizado a gem [sinatra-partial](https://github.com/yb66/Sinatra-Partial), porém, ela não atende essa necessidade como eu esperava, além de não ser atualizada a mais de 7 anos.

### Arquivos
| Descrição | Path |
|-|-|
| Arquivos _.html.erb_ | `./app/templates/hello/` |
| Partials | `./app/templates/shared/` |

## Referências
- [Sinatra - Doc](https://sinatrarb.com/intro.html)
- [Ruby - Sintaxe do rindex (reverse index)](https://apidock.com/ruby/v2_5_5/Array/rindex)