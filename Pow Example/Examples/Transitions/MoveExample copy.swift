import Pow
import SwiftUI

struct MoveExample: View, Example {
    @State
    var isVisible: Bool = false

    var body: some View {
        ZStack {
            if isVisible {
                PlaceholderView()
                    .compositingGroup()
                    .transition(.movingParts.move(angle: .degrees(225)))
            }
        }
        .defaultBackground()
        .onTapGesture {
            withAnimation(.spring(dampingFraction: 1)) {
                isVisible.toggle()
            }
        }
        .autotoggle($isVisible, with: .spring(dampingFraction: 1))
    }

    static var icon: Image? {
        Image(systemName: "arrow.up.left.and.down.right.and.arrow.up.right.and.down.left")
    }
}
