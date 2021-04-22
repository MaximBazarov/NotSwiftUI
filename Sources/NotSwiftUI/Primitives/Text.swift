import UIKit

class Text: View {
    
    var text: String

    var label = UILabel()
    
    var body: Body {
        .uiView(label)
    }
    
    init(_ text: String) {
        self.text = text
    }
}

extension Text: RecursiveDescription {
    
    func recursiveDescription(level: Int) -> String {
        let tabs = String(repeating: "  ", count: level)
        return "\(tabs)Text(\"\(text)\")"
    }
    
}
