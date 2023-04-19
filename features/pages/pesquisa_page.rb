class PesquisaPage < SitePrism::Page
    set_url '/'
    element :btn_abrir_busca, '#search-open'
    element :input_campo, '#masthead > div.site-header-content > div.desktop-search > form > label > input'
    element :btn_buscar, '#masthead > div.site-header-content > div.desktop-search > form > input'

    def abrir_campo_busca
        btn_abrir_busca.click
    end

    def preencher_campo_dados
        input_campo.set 'Banco'
    end

    def clicar_finalizar
        btn_buscar.click
    end

end



