import SwiftUI

struct ContentView: View {
    
    var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"]
    var correctAnswer = Int.random(in: 0...2)
    
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            VStack(spacing: 16) {
                Text("Tap the flag of \(countries[correctAnswer])")
                    .foregroundColor(.white)
                
                VStack {
                    ForEach(0..<3) { flag in
                        Button {}
                    label: {
                        Image(countries[flag])
                            .opacity(0.9)
                    }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
