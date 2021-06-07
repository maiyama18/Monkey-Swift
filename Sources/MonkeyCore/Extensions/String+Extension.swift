//
//  String+Extension.swift
//
//  Created by Maiku Yamaguchi on 2021/06/07.
//

extension String {
    subscript(safe index: Index) -> Character? {
        indices.contains(index) ? self[index] : nil
    }
}
