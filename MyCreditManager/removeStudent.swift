//
//  removeStudent.swift
//  MyCreditManager
//
//  Created by jito on 2023/05/01.
//

import Foundation

func removeStudent() {
    print("삭제할 학생의 이름을 입력해주세요")
    let input = readLine() ?? ""
    
    guard !input.isEmpty else {
        print(ErrorMessage.InputIsNotValidError.rawValue)
        return
    }
    
    guard studentScore[input] != nil else {
        print(input + ErrorMessage.NotFoundStudentNameError.rawValue)
        return
    }
    
    studentScore.removeValue(forKey: input)
    print("\(input) 학생을 삭제하였습니다.")
}
