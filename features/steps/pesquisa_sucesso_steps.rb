Quando('pesquiso uma palavra do nome do artigo') do
    @pesquisa_page.preencher_campo_dados
    @pesquisa_page.clicar_finalizar
end
  
Então('o website exibir o resultado buscado') do
    expect(@pesquisa_page).to have_content 'Resultados da busca por: Banco'
end