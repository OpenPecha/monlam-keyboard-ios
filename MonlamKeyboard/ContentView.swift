//
// Created by Gabor Detari gabor@detari.dev
// Copyright (c) 2024 Gabor Detari. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(uiImage: UIImage(named: "AppIcon") ?? UIImage())
                .resizable()
                .scaledToFit()
                .frame(width: 100)
                .cornerRadius(16)
            Text("Monlam Keyboard")
                .font(.system(size: 30, weight: .bold))
                .padding()
            HStack {
                VStack(alignment: .leading, spacing: 8) {
                    Text("1. Go to Settings")
                    Text("2. General > Keyboard")
                    Text("3. Keyboards > Add New Keyboard...")
                    Text("4. Select Monlam Keyboard")
                }
                .font(.system(size: 20))
                Spacer()
            }
            .padding()
            Spacer()
            Button("Go to Settings") {
                if let url = URL(string: UIApplication.openSettingsURLString) {
                    UIApplication.shared.open(url, options: [:], completionHandler: nil)
                }
            }
            .controlSize(.large)
            .buttonStyle(.borderedProminent)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
