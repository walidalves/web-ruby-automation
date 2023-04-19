Dado('que acesso o blog do Agi') do
    @pesquisa_page = PesquisaPage.new
    @pesquisa_page.load
    @pesquisa_page.abrir_campo_busca

end

Quando('pesquiso uma palavra do nome do artigo') do
    @pesquisa_page.input_campo
    @pesquisa_page.clicar_finalizar
end
  
Então('o website exibir o resultado buscado') do
    expect(@pesquisa_page).to have_content 'Resultados da busca por: Banco'
end