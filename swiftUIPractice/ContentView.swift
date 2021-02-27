//
//  ContentView.swift
//  swiftUIPractice
//
//  Created by 이예진 on 2020/12/06.
//

import SwiftUI


struct ContentView: View {
    
    //데이터 연동
    @Binding
    var isActivated: Bool
    init(isActivated: Binding<Bool> = .constant(true)) {
        _isActivated = isActivated
    }
    
    //:값의 변화를 감지해 뷰에 적용(토글 에러 해결)
    // @State
    // private var isActivated: Bool = false
    var body: some View {
        
        NavigationView{
            VStack {
                VStack {
                   
                        myNumberStackView()
                        myNumberStackView()
                        myNumberStackView()
                    
                }
                .padding(isActivated ? 50 : 10)
                .background(isActivated ? Color.yellow : Color.black)
                .onTapGesture {
                    print("클릭됐다")
                    
                    //애니메이션
                    withAnimation{
                        self.isActivated.toggle()
                    }
                } //Vstack
                
                
                //네비게이션 버튼 (링크)
                NavigationLink(destination:newTextView() ){
                   Text("네비게이션")
                    .fontWeight(.bold)
                    .padding()
                    .font(.system(size: 30))
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(30)
                    
                    }
                
            }
           
            
        }//NavigationView
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
