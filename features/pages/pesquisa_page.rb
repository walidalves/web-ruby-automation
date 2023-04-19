class PesquisaPage < SitePrism::Page
    set_url '/'
    element :btn_abrir_busca, '#search-open'
    element :input_campo, '#masthead > div.site-header-content > div.desktop-search > form > label > input'
    element :btn_buscar, '#masthead > div.site-header-content > div.desktop-search > form > input'
    element :list_page, '#primary > nav > div > span.page-numbers.current'
    element :msg_nenhum_resultado, '#primary > section > header > h1'

    def abrir_campo_busca
        btn_abrir_busca.click
    end

    def preencher_campo_dados
        input_campo.set 'Banco'
    end

    def preencher_campo_dados_invalidos
        input_campo.set 'One Piece, o tesouro deixado por Gold Roger'
    end

    def clicar_finalizar
        btn_buscar.click
    end
end



