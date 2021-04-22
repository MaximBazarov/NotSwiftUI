import Foundation

//@_functionBuilder
@resultBuilder
struct ViewBuilder {
    typealias Expression = Body

    static func buildExpression(_ view: View) -> Expression {
        return .view(view)
    }

    static func buildExpression(_ body: Body) -> Expression {
        return body.body
    }

    static func buildBlock(_ children: View...) -> Expression {
        return .collection(children)
    }

    static func buildBlock(_ collection: [View]) -> Expression {
        return .collection(collection)
    }

    static func buildOptional(_ child: View?) -> Expression {
        guard let view = child else { return .none }
        return .view(view)
    }

    static func buildEither(first child: View) -> Expression {
        return .view(child)
    }
    static func buildEither(second child: View) -> Expression {
        return .view(child)
    }

    static func buildFinalResult(_ component: Expression) -> Expression {
        return component
    }
}
