


import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
            image
                .clipShape(Circle())
                .background(Circle().stroke(Color.white, lineWidth: 1.0))
                .shadow(radius: 7)
    }
}

struct CirccleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
        
    }
}

