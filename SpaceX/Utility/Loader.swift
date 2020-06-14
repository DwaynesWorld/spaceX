//

import Foundation


struct Loader {
  static func load<T: Decodable>(_ filename: String, as type: T.Type = T.self) -> T {
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
      fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
      let data = try Data(contentsOf: file)
      let decoder = JSONDecoder()
      return try decoder.decode(T.self, from: data)
    } catch {
      fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
  }
}
