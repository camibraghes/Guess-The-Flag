import SwiftUI

struct ContentView: View {
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var showingScore = false
    @State private var scoreTitle = ""
    
    var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
 
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            VStack(spacing: 16) {
                Text("Tap the flag of \(countries[correctAnswer])")
                    .foregroundColor(.white)
                
                VStack {
                    ForEach(0..<3) { flag in
                        Button {
                            flagTapped(flag)
                        }
                    label: {
                        Image(countries[flag])
                            .opacity(0.9)
                    }
                    }
                }
            }
        }
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Corrrect"
        } else {
            scoreTitle = "Wrong"
        }
        
        showingScore = true
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
