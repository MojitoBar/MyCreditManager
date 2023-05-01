//
//  getGrade.swift
//  MyCreditManager
//
//  Created by jito on 2023/05/01.
//

import Foundation

func getGrade() {
    print("평점을 알고싶은 학생의 이름을 입력해주세요")
    let input = readLine() ?? ""
    
    guard !input.isEmpty else {
        print(ErrorMessage.InputIsNotValidError.rawValue)
        return
    }
    
    guard studentScore[input] != nil else {
        print(input + ErrorMessage.NotFoundStudentNameError.rawValue)
        return
    }
    
    var scores: Double = 0
    for i in studentScore[input]! {
        scores += score[i.value]!
        print("\(i.key): \(i.value)")
    }
    let grade = round((scores/Double(studentScore[input]!.count) * 100)) / 100
    print("평점 : \(grade)")
}
