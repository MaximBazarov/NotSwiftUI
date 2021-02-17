
import UIKit

indirect enum Body: View {

    var body: Body { return self }

    case none
    case view(View)
    case collection([View])
    case uiView(UIView)

}


protocol RecursiveDescription {
    func recursiveDescription(level: Int) -> String
}


extension Body: RecursiveDescription, CustomDebugStringConvertible {

    func recursiveDescription(level: Int) -> String {
        let tabs: String = String(repeating: "  ", count: level)

        switch self {
        case .none:
            return tabs + "- *"

        case .view(let view):
            return view.recursiveDescription(level: level + 1)

        case .collection(let views):
            let subviews = views.map{
                $0.recursiveDescription(level: level)
            }
            return subviews.joined(separator: "\n")

        case .uiView(let uiView):
            return " - \(type(of: uiView))"
        }
    }


    var debugDescription: String {
        return recursiveDescription(level: 0)
    }

}

