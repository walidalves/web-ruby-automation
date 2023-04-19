Quando('pesquiso algo inválido') do
    @pesquisa_page.preencher_campo_dados_invalidos
    @pesquisa_page.clicar_finalizar
end
  
Então('o website deve exibir uma mensagem que não foram encontrados resultados') do
    @pesquisa_page.wait_until_msg_nenhum_resultado_visible
    expect(@pesquisa_page).to have_content 'Nenhum resultado'
    expect(@pesquisa_page).to have_content 'Não encontramos nada para estes termos de busca. Tente novamente com palavras-chave diferentes.'  
end