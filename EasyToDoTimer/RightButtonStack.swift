//
//  RightButtonStack.swift
//  EasyToDoTimer
//
//  Created by Михаил Куприянов on 11.07.2022.
//

import SwiftUI

struct RightButtonStack: View {
    var body: some View {
        HStack {
            Spacer()
            VStack {
                ZStack {
                    
                    Image(systemName: "rectangle.and.pencil.and.ellipsis")
                        .foregroundColor(.black)
                    //                            .font(.largeTitle)
                    //                        .padding([.top, .trailing], -20)
                    
                }
                Spacer()
                Image(systemName: "ellipsis.rectangle")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .padding([.bottom, .trailing], -20)
            }
        }
    }
}

struct RightButtonStack_Previews: PreviewProvider {
    static var previews: some View {
        RightButtonStack()
    }
}
