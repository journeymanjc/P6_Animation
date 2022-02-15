//
//  ContentView.swift
//  Animation
//
//  Created by Jae Cho on 2/14/22.
//

import SwiftUI

struct ContentView: View {
	
	@State private var animationAmount = 1.0
	
    var body: some View {
		 
		 print(animationAmount)
		 
//		 Button("Click Me"){
//
//		 }
//		 .padding(50)
//		 .background(.red)
//		 .foregroundColor(.white)
//		 .clipShape(Circle())
//		 .overlay(
//				Circle()
//					.stroke(.red)
//					.scaleEffect(animationAmount)
//					.opacity(2 - animationAmount)
//					.animation(
//						.easeInOut(duration: 1)
//							.repeatForever(autoreverses: false),
//						value: animationAmount
//					)
//		 )
//		 .onAppear {
//			 animationAmount = 6
//		 }
		 
		 return VStack{
			 Stepper("Scale amount", value: $animationAmount.animation(), in: 1...10)
			 Spacer()
			 Button("Tap Me"){
				 animationAmount += 1
			 }
			 .padding(40)
			 .background(.red)
			 .foregroundColor(.white)
			 .clipShape(Circle())
			 .scaleEffect(animationAmount)
		 }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
