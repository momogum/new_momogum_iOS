//
//  UnderLineTextField.swift
//  momogum
//
//  Created by 서재민 on 3/2/25.
//

import SwiftUI

extension View {
    /// 밑줄이 있는 텍스트 필드
    func underlinedTextField(text: Binding<String>, placeholder: String, isValid: Bool) -> some View {
        VStack(spacing: 4) {
            TextField(placeholder, text: text)
                .textFieldStyle(PlainTextFieldStyle())
                .padding(.horizontal, 8)

            Rectangle()
                .frame(height: 2)
                .foregroundColor(isValid ? .green : .red) // 입력값 유효성에 따라 색 변경
        }
        .padding(.horizontal)
    }
}
// underlinedTextField(
//text: $nickname,
//placeholder: "닉네임을 입력하세요",
//isValid: validator.lengthCheck
//) 이렇게 쓰시면됩니다
//    .onChange(of: nickname) { newValue in
//                    validator.validate(newValue) //  입력값 변경 시 유효성 검사 실행
//                }
