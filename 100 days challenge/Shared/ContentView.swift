//
//  ContentView.swift
//  Shared
//
//  Created by Jessica Kim on 23.03.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            var isCool = false
             
             print(isCool)
             
             isCool = !isCool
             print(isCool)
             
             isCool = !isCool
             print(isCool)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
