 //
//  ContentView.swift
//  SwiftUI_Slider&Stepper
//
//  Created by mohamed  habib on 18/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
   @State private var orderCount = 0
    @State private var houseTemperature: Double = 0
    
    var body: some View {
    VStack {
//        Stepper(onIncrement: {
//            self.orderCount += 1
//        }, onDecrement: {
//             self.orderCount -= 1
//        }) {
//            Text("Set order amount")
//        }
        
   
            Stepper("Set order amount", value: $orderCount)
             Text("Current order amount: \(orderCount)")
        //Slider(value: $houseTemperature)
        Slider(value: $houseTemperature, in: (10...20))
        Text("\(houseTemperature)")
        }
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
