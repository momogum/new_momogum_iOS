//
//  TextfieldXButton.swift
//  momogum
//
//  Created by 서재민 on 3/2/25.



import SwiftUI

extension View {
    /// 입력값을 초기화하는 버튼
    @ViewBuilder
    func clearButton(for text: Binding<String>) -> some View {
        Button(action: {
            text.wrappedValue = "" // 입력값 초기화
        }) {
            Image(systemName: "xmark.circle")
                .foregroundColor(.gray)

        }
    }
}
// 사용방식은 clearButton(for: $nickname)처럼 binding되는 값 적으시면됩니다!
