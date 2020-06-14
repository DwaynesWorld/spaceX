//

import SwiftUI

struct RocketCollectionView: View {
  let title = "Rockets"
  var rockets: [Rocket]
  
  var body: some View {
    VStack(alignment: .leading) {
      Text("Rockets")
        .font(.title)
        .foregroundColor(.primary)
      
      ScrollView(.horizontal, showsIndicators: false) {
        HStack(alignment: .top) {
          ForEach(rockets, id: \.id) { rocket in
            NavigationLink(destination: RocketDetailsView(rocket: rocket)) {
              RocketCardView(rocket: rocket)
                .frame(width: 300.0)
                .padding(.trailing, 30)
            }
          }
        }
      }
      
      Spacer()
    }
  }
}

struct RocketCollectionView_Previews: PreviewProvider {
  static var previews: some View {
    let rockets: [Rocket] = Loader.load("rockets.json")
    return RocketCollectionView(rockets: rockets)
  }
}
