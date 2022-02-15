//
//  ContentView.swift
//  Animation
//
//  Created by Jae Cho on 2/14/22.
//

import SwiftUI

struct ContentView: View {
	
	@State private var animationAmount = 0.0
	
    var body: some View {
		 Button("Tap Me"){
			 withAnimation {
				 animationAmount += 360
			 }
			 
		 }
		 .padding(40)
		 .background(.red)
		 .foregroundColor(.white)
		 .clipShape(Circle())
		 .rotation3DEffect(.degrees(animationAmount), axis:(x:1, y:1,z:1))
	 }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
