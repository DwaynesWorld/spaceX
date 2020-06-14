//

import SwiftUI

struct HomeView: View {
  let rockets: [Rocket] = Loader.load("rockets.json")
  
  var body: some View {
    NavigationView {
      VStack(alignment: .leading) {
        RocketCollectionView(rockets: rockets)
          .frame(height: 300)
          .padding(.top)
          .padding(.bottom)
          .padding(.leading)
        
        Spacer()
      }.navigationBarTitle("SpaceX")
    }
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    return HomeView()
  }
}
