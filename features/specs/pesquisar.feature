     #language: pt
     
     @smoke_test
     @pesquisar
     Funcionalidade: Pesquisar artigos no blog do agi
     Como um usuário do blog do agi
     Quero pesquisar um artigo
     Para ler as atualizações gerais disponíveis

     
     @pesquisar_sucesso
     Cenário: Pesquisar artigo com sucesso
     Dado que acesso o blog do Agi
     Quando pesquiso uma palavra do nome do artigo
     Então o website exibir o resultado buscado

    @pesquisar_sem_resultado
     Cenário: Pesquisar artigo sem resultado
     Dado que acesso o blog do Agi
     Quando pesquiso algo inválido
     Então o website deve exibir uma mensagem que não foram encontrados resultados
