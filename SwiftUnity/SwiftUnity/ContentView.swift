//
//  ContentView.swift
//  SwiftUnity
//
//  Created by Simon Sestak on 23/08/2024.
//

import SwiftUI

private struct ButtonViewModifier: ViewModifier {
    var color: Color

    func body(content: Content) -> some View {
        content.frame(width: 200, height: 50).background(color)
    }
}

private struct TextViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content.font(.title).foregroundColor(Color.white)
    }
}

struct ContentView: View {
    @ObservedObject var viewModel = ViewModel.shared

    var body: some View {
        VStack {
            Text("\(viewModel.number)")
            Spacer()
            Button(action: {
                Unity.shared.show()
                Unity.shared.sendMessage(
                    "Ball",
                    methodName: "SetBallColor",
                    message: "red"
                )
            }) {
                Text("Red").modifier(TextViewModifier())
            }
            .modifier(ButtonViewModifier(color: Color.red))

            Spacer()

            Button(action: {
                Unity.shared.show()
                Unity.shared.sendMessage(
                    "Ball",
                    methodName: "SetBallColor",
                    message: "blue"
                )
            }) {
                Text("Blue").modifier(TextViewModifier())
            }
            .modifier(ButtonViewModifier(color: Color.blue))

            Spacer()

            Button(action: {
                Unity.shared.show()
                Unity.shared.sendMessage(
                    "Ball",
                    methodName: "SetBallColor",
                    message: "green"
                )
            }) {
                Text("Green").modifier(TextViewModifier())
            }
            .modifier(ButtonViewModifier(color: Color.green))

            Spacer()
        }
    }
}
