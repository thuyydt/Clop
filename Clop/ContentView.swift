//
//  ContentView.swift
//  Clop
//
//  Created by Alin Panaitiu on 16.07.2022.
//

import SwiftUI

// MARK: - MenuView

struct MenuView: View {
    @AppStorage(SHOW_MENUBAR_ICON) var showMenubarIcon = true

    var body: some View {
        Toggle("Show menubar icon", isOn: $showMenubarIcon)
        Divider()
        Button("Quit") {
            NSApp.terminate(nil)
        }
    }
}

// MARK: - ContentView

struct ContentView: View {
    @AppStorage(SHOW_MENUBAR_ICON) var showMenubarIcon = true
    var body: some View {
        HStack(spacing: 40) {
            VStack {
                Image("clop")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                VStack {
                    Text("Clop")
                        .font(.system(size: 36, weight: .black, design: .rounded))
                    Text("Clipboard")
                        .font(.system(size: 11, weight: .semibold, design: .monospaced))
                    Text("optimizer")
                        .font(.system(size: 10, weight: .semibold, design: .monospaced))
                        .offset(x: 0, y: -2)

                }
                    .offset(x: 0, y: -25)
            }
            VStack {
                Toggle("Show menubar icon", isOn: $showMenubarIcon)
            }.frame(height: 100, alignment: .top)
        }
        .padding(.horizontal, 50)
        .padding(.vertical, 20)
    }
}

// MARK: - ContentView_Previews

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
