//
//  ContentView.swift
//  Animation
//
//  Created by Jae Cho on 2/14/22.
//

import SwiftUI

struct ContentView: View {
	let letters = Array("Hello, SwiftUI")
	@State private var isShowingRed = false
	@State private var dragAmount = CGSize.zero
	
    var body: some View {
		 VStack{
			 Button("Tap Me"){
				 withAnimation {
					 isShowingRed.toggle()
				 }
				 
			 }
			 if isShowingRed{
				 Rectangle()
					 .fill(.red)
					 .frame(width: 200, height: 200)
					 .transition(.asymmetric(insertion: .scale, removal: .opacity))
			 }

		 }
	 }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
			 .previewDevice("iPhone 13 mini")
    }
}
