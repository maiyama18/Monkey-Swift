//
//  Token.swift
//  
//  Created by Maiku Yamaguchi on 2021/06/07.
//

enum Token {
    case illegal
    case eof

    case identifier
    case int

    case assign
    case plus

    case comma
    case semiColon

    case lParen
    case rParen
    case lBrace
    case rBrace

    case function
    case `let`
}

