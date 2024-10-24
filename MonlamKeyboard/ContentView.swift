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
            VStack {
                Text("སྨོན་ལམ་མཐེབ་གཞོང་།")
                    .font(.custom("MonlamTBslim", size: 24))
                Text("Monlam Keyboard")
                    .font(.system(size: 30, weight: .bold))
            }
            
                .padding()
            HStack {
                VStack(alignment: .leading, spacing: 8) {
                    Text("༡ སྒྲིག་འགོད་ལ་སོང་།")
                    Text("1. Go to Settings")
                        .font(.system(size: 18))
                    Text("༢ སྤྱིར་བཏང་། > མཐེབ་གཞོང་།")
                    Text("2. General > Keyboard")
                        .font(.system(size: 18))
                    Text("༣ མཐེབ་གཞོང་ཁག > མཐེབ་གཞོང་གསར་བ་ཁ་སྣོན།")
                    Text("3. Keyboards > Add New Keyboard...")
                        .font(.system(size: 18))
                    Text("༤ སྨོན་ལམ་མཐེབ་གཞོང་འདེམས།")
                    Text("4. Select Monlam Keyboard")
                        .font(.system(size: 18))
                }
                .minimumScaleFactor(0.5)
                .font(.custom("MonlamTBslim", size: 16))
                Spacer()
            }
            .padding()
            Spacer()
            Button("སྒྲིག་འགོད་ལ་སོང་། Go to Settings") {
                if let url = URL(string: UIApplication.openSettingsURLString) {
                    UIApplication.shared.open(url, options: [:], completionHandler: nil)
                }
            }
            .font(.custom("MonlamTBslim", size: 14))
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
