//
//  Command.swift
//
//  Created by Maiku Yamaguchi on 2021/06/07.
//

import ArgumentParser
import MonkeyCore

final class Command: ParsableCommand {
    static var configuration = CommandConfiguration(
        commandName: "monkey",
        abstract: "swift port of monkey"
    )

    @Option(help: "input for monkey interpreter")
    var input: String

    func run() throws {
        let lexer = Lexer(input: input)
        while true {
            let token = lexer.nextToken()
            print(token)

            if token == .eof {
                break
            }
        }
    }
}
