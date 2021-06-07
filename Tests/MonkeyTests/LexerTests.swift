import XCTest
@testable import MonkeyCore

final class LexerTests: XCTestCase {
    func testLexer() throws {
        let input = "=+(){},;"
        let lexer = Lexer(input: input)

        let expectedTokens: [Token] = [
            .assign,
            .plus,
            .lParen,
            .rParen,
            .lBrace,
            .rBrace,
            .comma,
            .semiColon
        ]

        expectedTokens.forEach { expectedToken in
            let actual = lexer.nextToken()
            XCTAssertEqual(actual, expectedToken)
        }
    }
}
