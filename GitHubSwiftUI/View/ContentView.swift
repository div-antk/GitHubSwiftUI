//
//  ContentView.swift
//  GitHubSwiftUI
//
//  Created by Takuya Ando on 2021/02/28.
//

import SwiftUI

struct ContentView: View {
    
    @State private var text = ""
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                //
            }
        }
        .padding()
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarItems(leading: HStack {
            TextField("検索ワード", text: $text, onCommit: {
                // 編集完了後に呼ばれるクロージャー
            })
            // 角丸デザイン
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .keyboardType(.asciiCapable)
            // ナビゲーションバーに置く場合は横幅設定が必要
            .frame(width: UIScreen.main.bounds.width - 40)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
