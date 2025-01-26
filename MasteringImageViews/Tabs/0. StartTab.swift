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

struct StartTab: View {
    var body: some View {
        TabView {
            Tab("Assets", systemImage: "1.circle") {
                ImageAssetView()
            }
            Tab("Loading", systemImage: "2.circle") {
                LoadingImages()
            }
            Tab("Clip&Mask", systemImage: "3.circle") {
                ClippingAndMasking()
            }
            Tab("Template", systemImage: "4.circle") {
                TemplateImage()
            }
            Tab("AssEffectsets", systemImage: "5.circle") {
                ImageEffects()
            }
            
        }
    }
}

#Preview {
    StartTab()
}
