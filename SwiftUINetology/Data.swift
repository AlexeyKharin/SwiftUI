



import Foundation
import SwiftUI

struct DataRow: Hashable, Codable {
    
    var name: String
    var id: Int
    private var imageName: String
    
    var image: Image {
        Image(imageName)
    }
    
}
