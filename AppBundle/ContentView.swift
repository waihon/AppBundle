//
//  ContentView.swift
//  AppBundle
//
//  Created by Waihon Yew on 29/05/2021.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    if let fileURL = Bundle.main.url(forResource: "Hamlet", withExtension: "txt") {
      if let fileContents = try? String(contentsOf: fileURL) {
        return Text(fileContents).fontWeight(.light)
      }
    }
    return Text("Hello, world!")
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
