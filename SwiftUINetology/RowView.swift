//
//  RawView.swift
//  SwiftUINetology
//
//  Created by Alexey Kharin on 18.04.2022.
//

import SwiftUI
struct RowView: View {
    var row: DataRow

    var body: some View {
        HStack {
            row.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(row.name)

            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        RowView(row: landmarks[5])
                       .previewLayout(.fixed(width: 300, height: 70))
    }
}
