//
//  ContentView.swift
//  Quiz2
//
//  Created by Harleen Jhamat on 2022-02-09.
//

import SwiftUI
import Foundation
import UIKit

struct ContentView: View {
    @State var name: String = ""
    //@ObservedObject var age = NumbersOnly()
    @State var age: String = ""
    @State var movie: String = ""
    @State var submit = false
    
    var body: some View {
        ZStack{
            VStack{
                
                // HEADLINE
                Text("Student Info")
                    .padding()
                    .font(.system(size: 25))
                
                // TextInput: Name
                TextField("Name ", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 250, height: 30)
                
                // TextInput: Age
//                TextField("Age", text: $age.value)
//                            .padding()
//                            .keyboardType(.decimalPad)
//                            .textFieldStyle(RoundedBorderTextFieldStyle())
//                            .frame(width: 250, height: 30)
                
                // TextInput: Age
                TextField("Age", text: $age)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 250, height: 30)
                
                // TextInput: Favorite Movie
                TextField("Favorite Movie ", text: $movie)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 250, height: 30)
                
//                func pascalTriangle(numRows: Int64){
//                    var results = [[Int64]]()
//
//                }
                
                // Output
                if submit {
                        Text(name)
                        Text(age)
                        Text(movie)
                        //pascalTriangle(numRows: age)
                }
                
                // Button for submission
                Button(action:{submit.toggle()},
                    label: {
                        Text("Submit")
                            .frame(width: 100, height:30, alignment: .center)
                            .foregroundColor(.white)
                            .background(.cyan)
                            .padding()
                    
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
