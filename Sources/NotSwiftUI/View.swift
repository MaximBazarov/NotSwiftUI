
protocol View: RecursiveDescription {
    @ViewBuilder var body: Body { get }
}

extension View {

    func recursiveDescription(level: Int) -> String{
        return body.recursiveDescription(level: level + 1)
    }
}
