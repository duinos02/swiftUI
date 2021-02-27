//
//  myNumberStackView.swift
//  swiftUIPractice
//
//  Created by 이예진 on 2020/12/07.
//


import SwiftUI

    

struct myNumberStackView : View {
    
    
    
    var body: some View {
    HStack {
        Text("1!")
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .font(.system(size: 50))
            .background(Color.blue)
        Text("2!")
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .font(.system(size: 50))
            .background(Color.purple)
        Text("3!")
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .font(.system(size: 50))
            .background(Color.red)
    }
    }
}

struct myNumberStackView_Previews: PreviewProvider {
    static var previews: some View {
        myNumberStackView()
    }
}

