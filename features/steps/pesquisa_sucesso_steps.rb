Dado('que acesso o blog do Agi') do
    @pesquisa_page = PesquisaPage.new
    @pesquisa_page.load
    #campo reaproveitado nos outros testes para iniciar a lupa
    @pesquisa_page.abrir_campo_busca
end

Quando('pesquiso uma palavra do nome do artigo') do
    @pesquisa_page.preencher_campo_dados
    @pesquisa_page.clicar_finalizar
end
  
Então('o website exibir o resultado buscado') do
    @pesquisa_page.wait_until_list_page_visible
    expect(@pesquisa_page).to have_content 'Resultados da busca por: Banco'
    expect(@pesquisa_page).not_to have_content 'Nenhum resultado'
    #Verificar o número de resultados retornados, quantidade de elementos correspondentes ao seletor
    expect(@pesquisa_page.all('.search-results .post').size).to be > 0
end