//
//  ContentView.swift
//  SwiftUICountApp
//
//  Created by 大森青 on 2025/06/26.
//

import SwiftUI

struct ContentView: View {
    @State var count: Int = 0
    @State var result: String = ""
    
    var body: some View {
        VStack {
            
            Text(result)
                .font(.system(size: 32))
                .frame(width: 300, height: 100)
            Text("\(count)")
                .frame(width: 300, height: 100)
                .font(.system(size: 48))
                .foregroundColor(count >= 0 ? .red : .blue)
            HStack {
                Button("+") {
                    count += 1
                    judge()
                }
                .font(.system(size: 48))
                .foregroundStyle(.white)
                .frame(width: 100, height: 100)
                .background(.red)
                Button("-") {
                    count -= 1
                    judge()
                }
                .font(.system(size: 48))
                .foregroundStyle(.white)
                .frame(width: 100, height: 100)
                .background(.blue)
            }
            .padding()
        }
    }
    
    func judge() {
        if count >= 5 && count < 10 {
            result = "プラス優勢！"
        } else if count <= -5 && count > -10 {
            result = "マイナス優勢！"
        } else if count >= 10 {
            result = "プラスの勝ち！"
        } else if count <= -10 {
            result = "マイナスの勝ち！"
        } else {
            result = ""
        }
    }
}

#Preview {
    ContentView()
}
