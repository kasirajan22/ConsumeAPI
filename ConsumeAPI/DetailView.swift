//
//  DetailView.swift
//  ConsumeAPI
//
//  Created by Magizhan on 06/10/20.
//

import SwiftUI

struct DetailView: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}
