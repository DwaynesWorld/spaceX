//

import SwiftUI


struct RocketCardView: View {
  
  var rocket: Rocket
  
  var body: some View {
    VStack(alignment: .leading, spacing: 16.0) {
      Image(rocket.rocketID)
        .resizable().renderingMode(.original)
        .aspectRatio(contentMode: .fill)
        .frame(width: 300, height: 170)
        .cornerRadius(10)
        .shadow(radius: 10)
      
      VStack(alignment: .leading, spacing: 5.0) {
        Text(rocket.rocketName)
          .foregroundColor(.primary)
          .font(.headline)
        
        Text(rocket.description)
          .font(.subheadline)
          .foregroundColor(.secondary)
          .multilineTextAlignment(.leading)
          .lineLimit(2)
          .frame(height: 40.0)
      }
    }
  }
}

struct RocketView_Previews: PreviewProvider {
  static var previews: some View {
    let rockets: [Rocket] = Loader.load("rockets.json")
    return RocketCardView(rocket: rockets.first!)
  }
}
