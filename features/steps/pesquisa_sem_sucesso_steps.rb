Dado('que acesso o blog do Agi') do
    @pesquisa_page = PesquisaPage.new
    @pesquisa_page.load
    @pesquisa_page.abrir_campo_busca

end

Quando('pesquiso algo inválido') do
    @pesquisa_page.preencher_campo_dados_invalidos
    @pesquisa_page.clicar_finalizar
end
  
Então('o website deve exibir uma mensagem que não foram encontrados resultados') do
    expect(@pesquisa_page).to have_content 'Nenhum resultado'
end