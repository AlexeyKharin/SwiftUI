

import SwiftUI

struct DetailImage: View {
    
    var image: Image
    
    var body: some View {
        NavigationView {
      CircleImage(image: image)

    }
    }
}

struct DetailImage_Previews: PreviewProvider {
    static var previews: some View {
        DetailImage(image: Image("turtlerock"))
    }
}
