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

struct LoadingImages: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    if let url = Bundle.main.url(forResource: "Siwash.png", withExtension: ""),
                       let data = try? Data(contentsOf: url),
                       let image = UIImage(data: data) {
                        Image(uiImage: image)
                            .resizable()
                            .scaledToFit()
                    } else {
                        ContentUnavailableView("No image found", systemImage: "photo.fill")
                    }
                    let fileURL = URL.documentsDirectory.appendingPathComponent("Inukshuk.png")
                    if FileManager.default.fileExists(atPath: fileURL.path),
                       let image = UIImage(contentsOfFile: fileURL.path) {
                        Image(uiImage: image)
                            .resizable()
                            .scaledToFit()
                    } else {
                        ContentUnavailableView("No image found", systemImage: "photo.fill")
                    }
                    if let url = URL(string: "https://stewartlynch.github.io/SupportFiles/River.jpg") {
                        AsyncImage(url: url) { image in
                            image
                                .resizable()
                                .scaledToFit()
                        } placeholder: {
                            ProgressView()
                        }
                    } else {
                        ContentUnavailableView("No image found", systemImage: "photo.fill")
                    }
                }
            }
            .scrollBounceBehavior(.basedOnSize)
                .navigationTitle("Loading Images")
        }
        .onAppear {
            print(URL.documentsDirectory.path(percentEncoded: false))
        }
    }
}

#Preview {
    LoadingImages()
}
