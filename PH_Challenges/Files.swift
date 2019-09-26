//
//  Files.swift
//  PH_Challenges
//
//  Created by nag on 03/09/2019.
//  Copyright © 2019 Anton Novoselov. All rights reserved.
//

import Foundation

func challenge27(fileName: String, lines: Int) {
    // MARK: - Print last lines #Easy
    guard let inputStr = try? String(contentsOfFile: fileName) else { return }
    
    var inp = inputStr.components(separatedBy: "\n")
    inp.reverse()
    
    var outArr = [String]()
    
    for index in 0 ..< min(lines, inp.count) {
        outArr.append(inp[index])
    }
    
    print(outArr.joined(separator: ", "))
}

func challenge33(in directory: String) -> [String] {
    // MARK: - Find duplicate filenames #Tricky
    let fm = FileManager.default
    let directoryURL = URL(fileURLWithPath: directory)

    guard let files = fm.enumerator(at: directoryURL, includingPropertiesForKeys: nil) else { return [] }
    var duplicates = Set<String>()
    var seen = Set<String>()

    for case let file as URL in files {
        guard file.hasDirectoryPath == false else { continue }

        let filename = file.lastPathComponent

        if seen.contains(filename) {
            duplicates.insert(filename)
        }

        seen.insert(filename)
    }

    return Array(duplicates)
}
