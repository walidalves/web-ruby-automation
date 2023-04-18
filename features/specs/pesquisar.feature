     #language: pt
     @smoke_test
     Funcionalidade: Pesquisar artigos no blog do agi
     Como um usuário do blog do agi
     Quero pesquisar um artigo
     Para ler as atualizações gerais disponíveis

     
     @pesquisar_sucesso
     @smoke
     Cenário: Pesquisar artigo com sucesso
     Dado que acesso o cadastro de usuário
     E preencho os campos do formulário com dados válidos de pessoa física
     Quando confirmo o cadastro
     Então o sistema deve exibir a mensagem de boas vindas

    @pesquisar_sem_retorno
     Cenário: Pesquisar artigo sem retorno 
     Dado que acesso o cadastro de usuário
     E preencho os campos do formulário com dados válidos de pessoa física
     Quando confirmo o cadastro
     Então o sistema deve exibir a mensagem de boas vindas
