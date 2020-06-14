//

import SwiftUI

struct RocketDetailsView: View {
  
  let rocket: Rocket
  
  var body: some View {
    List {
      ZStack(alignment: .bottom) {
        Image(rocket.rocketID)
          .resizable()
          .frame(height: 260.0)
          .aspectRatio(contentMode: .fit)
        
        Rectangle()
          .foregroundColor(.black)
          .frame(height: 80)
          .opacity(0.35)
          .blur(radius: 10)
        
        HStack {
          VStack(alignment: .leading, spacing: 8) {
            Text(rocket.rocketName)
              .foregroundColor(.white)
              .font(.title)
          }.padding(.leading).padding(.bottom)
          
          Spacer()
        }.padding(.top, 50)
      }.listRowInsets(EdgeInsets())
      
      VStack {
        Text(rocket.description)
          .foregroundColor(.primary)
          .lineLimit(nil)
          .lineSpacing(4)
      }.padding(.top).padding(.bottom)
    }.edgesIgnoringSafeArea(.top).navigationBarHidden(true)
  }
}

struct RocketDetailsView_Previews: PreviewProvider {
  static var previews: some View {
    let rockets: [Rocket] = Loader.load("rockets.json")
    return RocketDetailsView(rocket: rockets.dropFirst().first!)
  }
}
