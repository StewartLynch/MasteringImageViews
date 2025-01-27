//
//----------------------------------------------
// Original project: MasteringImageViews
// by  Stewart Lynch on 2025-01-23
//
// Follow me on Mastodon: @StewartLynch@iosdev.space
// Follow me on Threads: @StewartLynch (https://www.threads.net)
// Follow me on X: https://x.com/StewartLynch
// Follow me on LinkedIn: https://linkedin.com/in/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch
//----------------------------------------------
// Copyright © 2025 CreaTECH Solutions. All rights reserved.


import SwiftUI

struct ClippingAndMasking: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image(.rupert)
                    .resizable()
                    .scaledToFit()
                    .clipShape(.circle)
                Image(.rupert)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Image(.rupert2)
                    .resizable()
                    .scaledToFit()
                    .mask {
                        Image(systemName: "apple.logo")
                            .resizable()
                            .scaledToFit()
                    }
                    .frame(height: 300)
            }
                .navigationTitle("Clipshapes/Masking")
        }
    }
}

#Preview {
    ClippingAndMasking()
}
