//
//  Lexer.swift
//  
//  Created by Maiku Yamaguchi on 2021/06/07.
//

public final class Lexer {
    let input: String
    var position: String.Index
    var readPosition: String.Index
    var character: Character?

    public init(input: String) {
        self.input = input
        position = input.startIndex
        readPosition = input.startIndex

        readCharacter()
    }


    public func nextToken() -> Token {
        let token: Token
        switch character {
        case "=":
            token = .assign
        case "+":
            token = .plus
        case "(":
            token = .lParen
        case ")":
            token = .rParen
        case "{":
            token = .lBrace
        case "}":
            token = .rBrace
        case ",":
            token = .comma
        case ";":
            token = .semiColon
        default:
            token = .eof
        }

        readCharacter()
        return token
    }

    private func readCharacter() {
        character = readPosition < input.endIndex
            ? input[readPosition]
            : nil
        position = readPosition

        guard readPosition < input.endIndex else { return }
        readPosition = input.index(after: readPosition)
    }
}
