Quando('não pesquiso nenhuma palavra-chave') do
    @pesquisa_page.clicar_finalizar
end
  
Então('o website deve exibir todos os resultados de artigos') do
    @pesquisa_page.wait_until_list_page_visible
    expect(@pesquisa_page).to have_content 'Resultados da busca por:'
    expect(@pesquisa_page).not_to have_content 'Nenhum resultado'
    expect(@pesquisa_page.all('.search-results .post').size).to be > 0 
end