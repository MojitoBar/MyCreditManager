//
//  addStudent.swift
//  MyCreditManager
//
//  Created by jito on 2023/05/01.
//

import Foundation

func addStudent() {
    print("추가할 학생의 이름을 입력해주세요")
    let input = readLine() ?? ""
    
    guard !input.isEmpty else {
        print(ErrorMessage.InputIsNotValidError.rawValue)
        return
    }
    
    guard studentScore[input] == nil else {
        print(input + ErrorMessage.DuplicateStudentNameError.rawValue)
        return
    }
    
    studentScore[input] = [:]
    print("\(input) 학생을 추가했습니다.")
}
