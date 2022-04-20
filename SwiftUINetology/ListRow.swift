

import SwiftUI

struct ListRow: View {
    
    var body: some View {
        NavigationView {
            
            List(landmarks, id: \.id) { row in
                
                NavigationLink(
                    destination:
                        DetailImage(image: row.image)
                        .navigationBarTitle("\(row.name)", displayMode: .inline),
                    label: {
                        RowView(row: row)
                    })
            .navigationTitle("Nature")
        }
    }
    
}
}

struct ListEow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow()
    }
}
