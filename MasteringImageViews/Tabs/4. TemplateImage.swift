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

struct TemplateImage: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image(.grapes)
                    .resizable()
                    .scaledToFit()
                Image(.grapes2)
//                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                Button {
                    
                }label: {
                    Image(.grapes2)
                        .resizable()
                        .scaledToFit()
                }
                .tint(.green.mix(with: .black, by: 0.4))
            }
                .navigationTitle("Template Rendering")
        }
    }
}

#Preview {
    TemplateImage()
}
