//  Sam Security Developer Ltda
//  HomeView.swift
//  uber clone
//  www.silvaneimartins.com.br
//  Created by Silvanei  Martins on 29/09/22.
//  silvaneimartins_rcc@hotmail.com

import SwiftUI

struct HomeView: View {
    // MARK: - Propriedade
    
    // MARK: - Conteudo
    var body: some View {
        UberMapViewRepresentable()
            .ignoresSafeArea()
    }
}

// MARK: - Visualização
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
