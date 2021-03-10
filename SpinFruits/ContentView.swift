//
//  ContentView.swift
//  SpinFruits
//
//  Created by ArjMaster on 10/03/21.
//  Copyright © 2021 ArjMaster. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var credits = 1000
    @State private var fruit1 = 1
    @State private var fruit2 = 2
    @State private var fruit3 = 3
    
    var body: some View {
        ZStack(){
            VStack(spacing: 20.0){
                Text("SpinFruits").font(.system(size: 45))
                Spacer()
                Spacer()
                Text("Credits:"+String(credits)).font(.system(size: 14))
                Spacer()
                HStack {
                    Spacer()
                    Image("fruits"+String(fruit1)).resizable()
                        .frame(width: 64.0, height: 64.0)
                    Spacer()
                    Image("fruits"+String(fruit2)).resizable()
                        .frame(width: 64.0, height: 64.0)
                    Spacer()
                    Image("fruits"+String(fruit3)).resizable()
                        .frame(width: 64.0, height: 64.0)
                    Spacer()
                }
                Spacer()
                Spacer()
                Spacer()
                Button("Spin"){
                    self.fruit1 = Int.random(in: 1...3)
                    self.fruit2 = Int.random(in: 1...3)
                    self.fruit3 = Int.random(in: 1...3)
                    if self.fruit1 == self.fruit2 && self.fruit2 == self.fruit3 {
                        self.credits += 15
                    }else{
                        self.credits -= 5
                    }
                }.padding()
                .padding([.leading, .trailing])
                .foregroundColor(.white)
                    .background(Color.pink).cornerRadius(25)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
