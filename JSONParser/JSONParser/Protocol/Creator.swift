//
//  Creator.swift
//  JSONParser
//
//  Created by 조재흥 on 18. 11. 13..
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

protocol Creator {
    func removeBracket(_ input:String) -> String
    func sortByType(_ inputData:[String]) -> Collection
}