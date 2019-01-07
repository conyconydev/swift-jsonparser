//
//  GrammarChecker.swift
//  JSONParser
//
//  Created by Elena on 06/01/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct GrammarChecker {
    /*호출 된 상수를 선언하고이 regex인스턴스에NSRegularExpression
    통화가 표시되어 try?있으므로 경우 NSRegularExpression(pattern:options:), 오류가 발생 regex한다
     nil
    검색 패턴 #[a-z0-9]+은 첫 번째 인수로 제공됩니다.
    두 번째 인수는 정규식을 대소 문자를 구분하지 않도록 하는 옵션입니다 . 따라서 대문자와 소문자가 모두 포함 된 해시 태그를 찾습니다.*/
    let regex = try? NSRegularExpression(pattern: "#[a-z0-9]+", options: .caseInsensitive)
    
    
    // 1. { 라면 : Object 라서 dictionary 인지 확인
    // 2. [ 라면 : Array 라서  Objcet인지 확인 ,
    // 3. vlaue : String, number , Object, Array , Bool , null 확인
    
    // 4. key : String 라서 시작은 \" 이며 , " , \ , / , b(공백),n(newLine),r(return),t(tap) 확인
    //key를 구현할때 문자검사하고, 공백인지 탭인지 한줄띄어쓰기 등은 제거해서 체크할 예정 ,
    
    
}
