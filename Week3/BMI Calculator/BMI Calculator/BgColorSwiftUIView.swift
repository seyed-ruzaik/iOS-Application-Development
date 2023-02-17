//
//  BgColorSwiftUIView.swift
//  BMI Calculator
//
//  Created by Pubudu Mihiranga on 2023-02-10.
//

import SwiftUI

struct BgColorSwiftUIView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 200, height: 200)
                .foregroundColor(Color.red)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 150, height: 150)
                .foregroundColor(Color.green)
        }
    }
}

struct BgColorSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        BgColorSwiftUIView()
    }
}
