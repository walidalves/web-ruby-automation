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

    @pesquisar_sem_sucesso
     Cenário: Pesquisar artigo sem sucesso
     Dado que acesso o blog do Agi
     Quando pesquiso algo inválido
     Então o website deve exibir uma mensagem que não foram encontrados resultados

     @pesquisar_vazio
     Cenário: Pesquisar artigo sem sucesso
     Dado que acesso o blog do Agi
     Quando não pesquiso nenhuma palavra-chave
     Então o website deve exibir todos os resultados de artigos
