//
//  newTextView.swift
//  swiftUIPractice
//
//  Created by 이예진 on 2020/12/13.
//

import SwiftUI

struct newTextView : View {
    
    //값의 변화를 감지해 뷰에 적용(토글 에러 해결)
    @State
    
    private var index: Int = 0
    
    //배경색 배열 준비
    
    private let BackgroundColors = [
        Color.red,
        Color.yellow,
        Color.green,
        Color.blue,
        Color.purple
    ]
    
    var body: some View {
        VStack{

            Spacer()
            
            Text("아이템 인덱스 \(self.index)")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            
            Spacer()
            
        }.background(BackgroundColors[index])
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .onTapGesture {
            print("배경 아이템이 클릭됌")
            
           
            
            if(self.index == self.BackgroundColors.count - 1){
                self.index = 0
            }else {
                self.index += 1
            }
            
            
            
        }
            
            
            
        
        }
        
    }





struct newTextView_Previews: PreviewProvider {
    static var previews: some View {
        newTextView()
    }
}



