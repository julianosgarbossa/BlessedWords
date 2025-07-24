//
//  ContentView.swift
//  BlessedWords
//
//  Created by Juliano Sgarbossa on 24/07/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var resultado = "Deus falará com você aqui!"
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

            VStack(spacing: 25) {
                Text(resultado)
                    .padding(15)
                    .font(.system(size: 18, weight: .bold))
                    .italic()
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .multilineTextAlignment(.center)
                
                Button {
                    let num = arc4random() % UInt32(phrases.count)
                    print(num)
                    self.resultado = phrases[Int(num)]
                } label: {
                    Text("Frase Diária")
                        .bold()
                }
                .padding(15)
                .foregroundStyle(.black)
                .background(RoundedRectangle(cornerRadius: 20).fill(.yellow))
            }
            .padding(.horizontal, 40)
        }
    }
}

#Preview {
    ContentView()
}
