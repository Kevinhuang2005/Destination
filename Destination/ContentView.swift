//
//  ContentView.swift
//  Destination
//
//  Created by huangyuxuan on 7/7/25.
//
import SwiftUI

struct ContentView: View {
// Array of 5 destinations as required
let destinations = ["Paris", "New York", "Hawaii", "Tokyo", "Rome"]

// State properties
@State private var destinationStr = "Where would you like to go?"
@State private var selection = 0

    var body: some View {
        VStack {
            Spacer()
            
            // Destination display text
            Text(destinations[selection])
                .font(.largeTitle)
                .padding()
            
            // Status text
            Text(destinationStr)
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
            
            HStack {
                // Next button
                Button(action: {
                    nextDestination()
                }) {
                    Text("Next")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                // Pick button
                Button(action: {
                    pickDestination()
                }) {
                    Text("Pick")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .padding()
        }
        .padding()
    }

// Function to handle Next button tap
private func nextDestination() {
selection = (selection + 1) % destinations.count
destinationStr = "Where would you like to go?"
}
    
    // Function to handle Pick button tap
    private func pickDestination() {
        destinationStr = "Congratulations - your trip to \(destinations[selection]) has been confirmed!"
        }
        }

        struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
        ContentView()
        }
        }
    
#Preview {
    ContentView()
}
