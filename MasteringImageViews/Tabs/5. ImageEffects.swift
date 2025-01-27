//
//----------------------------------------------
// Original project: MasteringImageViews
// by  Stewart Lynch on 2025-01-25
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

struct ImageEffects: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Image(.kelowna)
                        .normal()
                    Image(.kelowna)
                        .normal()
                        .blur(radius: 10)
                    Image(.kelowna)
                        .normal()
                        .brightness(0.2)
                    Image(.kelowna)
                        .normal()
                        .brightness(-0.2)
                    Image(.kelowna)
                        .normal()
                        .saturation(3.0)
                    Image(.kelowna)
                        .normal()
                        .grayscale(1.0)
                    Image(.kelowna)
                        .normal()
                        .colorMultiply(.green)
                    Image(.kelowna)
                        .normal()
                        .saturation(5.0)
                        .colorMultiply(.green)
                        .contrast(2.0)
                        .opacity(0.9)
                    ZStack {
                        Image(.kelowna)
                            .normal()
                        Color.red
                            .blendMode(.screen)
                    }
                    ZStack {
                        Image(.kelowna)
                            .normal()
                        Color.red
                            .blendMode(.softLight)
                    }
                }
            }
            .scrollBounceBehavior(.basedOnSize)
                .navigationTitle("Image Effects")
        }
    }
}
extension Image {
    func normal() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
}

#Preview {
    ImageEffects()
}
