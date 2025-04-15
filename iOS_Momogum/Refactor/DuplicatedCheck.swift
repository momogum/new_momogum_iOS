//
//  DuplicatedCheck.swift
//  momogum
//
//  Created by 서재민 on 3/1/25.
//

import SwiftUI

class ValidationManager: ObservableObject {
    @Published var lengthCheck: Bool = false
    @Published var hasAllowedCharactersOnly: Bool = false

    /// 입력된 텍스트를 검증하는 함수
    func duplicatedCheck(_ text: String) {
        let allowedCharacters = CharacterSet(charactersIn: "abcdefghijklmnopqrstuvwxyz0123456789._")
        
        let lengthIsValid = text.count >= 5 && text.count <= 20
        let containsLowercase = text.range(of: "[a-z]", options: .regularExpression) != nil
        let onlyAllowedCharacters = text.unicodeScalars.allSatisfy { allowedCharacters.contains($0) }
        
        DispatchQueue.main.async {
            self.lengthCheck = lengthIsValid && containsLowercase
            self.hasAllowedCharactersOnly = onlyAllowedCharacters && containsLowercase
        }
    }
}



extension View {
    
    // 중복확인 체크 박스
    @ViewBuilder
    func duplicatedCheckText(_ text: String, isValid: Bool) -> some View {
        HStack {
            Image(systemName: "checkmark.circle")
                .foregroundColor(isValid ? .green : .gray)
            Text(text)
                .foregroundColor(isValid ? .green : .gray)
        }
    }
}
