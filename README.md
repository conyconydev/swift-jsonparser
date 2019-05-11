# Jsonparser


### 기능 설명
- JSON 객체 값(value)에 포함될 수 있는 데이터는 문자열(String), 숫자(Number), 부울 true/false(Bool) 만 가능하다고 가정
- 변환한 문자열은 [JSON 문법 검사 사이트](https://jsonlint.com/)처럼 배열은 한 줄로 붙여서 표현하고, 객체는 키-값을 다음줄로 내려서 표현

### 진행하면서 공부한것 어려웠던점
- 규칙 검사를 위해 정규표현식(Regular Expression)에 대해 학습
- 클로저에 대해서 학습
- 정규표현식을 검색하다가 커링을 알게 되었고 사용하게 되었다. 커링에 대해서 도움을 받은 [swift 함수에 커링 사용하기](https://academy.realm.io/kr/posts/currying-on-the-swift-functions/?w=1) 공유 
```swift
static func regexTest(pattern: String) -> (String) -> Bool {
        let expression: NSRegularExpression? = try? NSRegularExpression(pattern: pattern, options: .caseInsensitive)
        return { (input: String) -> Bool in
            guard let expression = expression else { return false }
            let inputRange = NSMakeRange(0, input.characters.count)
            let matches = expression.matches(in: input, options: [], range: inputRange)
            return matches.count > 0
        }
    }
```
