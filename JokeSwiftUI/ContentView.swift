
import SwiftUI

struct ContentView: View {
  
    
    @ObservedObject var JokesVm = JokesViewModel()
    
    
    var body: some View {
        
        NavigationStack {
            List(JokesVm.jokes) { element in
                Text(element.joke)
            }.navigationTitle("JOKES LİST")
        }
        
    }
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
