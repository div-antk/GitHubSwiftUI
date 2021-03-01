//
//  CardView.swift
//  GitHubSwiftUI
//
//  Created by Takuya Ando on 2021/02/28.
//

import SwiftUI

struct CardView: View {
    
    let input: Input

    init (input: Input) {
        self.input = input
    }

    var body: some View {
        VStack(alignment: .leading) {
            
            Image(uiImage: input.iconImage)
                // Buttonで包む際に色が変わらないようにする
                .renderingMode(.original)
                // 親のサイズに伸縮
                .resizable()
                // アスペクト比を保つ
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 2))
                .shadow(color: .gray, radius: 1, x: 0, y: 0)
            
            Text(input.title)
                // 明示的に色を指定しないとbuttonで包んだときにおかしくなる
                .foregroundColor(.black)
                .font(.title)
                .fontWeight(.bold)
            
            HStack {
                Text(input.language ?? "")
                    .font(.footnote)
                    .foregroundColor(.gray)
                Spacer()
                HStack(spacing: 4) {
                    Image(systemName: "star")
                        // 画像の色を変える
                        .renderingMode(.template)
                        // 灰色に変更
                        .foregroundColor(.gray)
                    Text(String(input.star))
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
            }
            // リポジトリ説明文
            Text(input.description ?? "")
                .foregroundColor(.black)
                // nilを渡すと文字が多くなっても改行される
                .lineLimit(nil)
        }
        // 枠内の余白
        .padding(24)
        // 角丸の枠線
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.gray, lineWidth: 1)
        )
        // カードUIの最低サイズ
        .frame(minWidth: 140, minHeight: 180)
        // 枠外の余白
        .padding()
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(input: Input(iconImage: UIImage(named: "icon")!,
                              title: "test",
                              language: "Swift",
                              star: 0,
                              description: "test",
                              url: "https:exmaple.com"
        ))
    }
}
