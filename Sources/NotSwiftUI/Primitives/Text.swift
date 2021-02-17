import UIKit

class Text: View {
    
    var text: String
    
    var body: Body {
        .uiView(UILabel())
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
