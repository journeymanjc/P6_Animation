//
//  ContentView.swift
//  Animation
//
//  Created by Jae Cho on 2/14/22.
//

import SwiftUI

struct ContentView: View {
	
	@State private var enabled = false
	
    var body: some View {
		 Button("Tap Me"){
			 enabled.toggle()
		 }
		 .frame(width: 200, height: 200)
		 .animation(nil, value: enabled)
		 .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
		 .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: enabled)
		 
		// .background(enabled ? .blue : .red)
	 }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
			 .previewDevice("iPhone 13 mini")
    }
}
