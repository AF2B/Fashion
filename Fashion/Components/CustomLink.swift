//
//  Link.swift
//  Fashion
//
//  Created by André Filipe Fonsêca Borba on 11/11/23.
//

import SwiftUI

struct CustomLink<Label: View, Destination: View>: View {
    private let destinationView: Destination
    private let label: () -> Label
    
    init(destinationView: Destination, @ViewBuilder label: @escaping () -> Label) {
        self.destinationView = destinationView
        self.label = label
    }
    
    var body: some View {
        NavigationLink(destination: destinationView) {
            label()
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundStyle(.brown)
                .underline(true, color: .gray)
        }
    }
}

#Preview {
    NavigationStack {
        CustomLink(destinationView: EmptyView()) {
            Text("Go to Second View")
        }
    }
}
