//
//  ListRow.swift
//  iDevice
//
//  Created by Aditya Ghorpade on 04/03/24.
//

import SwiftUI

struct ListRow: View {
    
    let title: String
    let description: String
    
    var body: some View {
        HStack {
            Text(title)
            Spacer()
            Text(description)
                .foregroundStyle(Color(.systemGray))
        }
    }
}

#Preview {
    ListRow(title: "detail", description: "desc")
}
