//
//  removeScore.swift
//  MyCreditManager
//
//  Created by jito on 2023/05/01.
//

import Foundation

func removeScore() {
    print("성적을 삭제할 학생의 이름, 과목 이름을 띄어쓰기로 구분하여 차례로 작성해주세요.")
    print("입력예) Mickey Swift")
    let input = readLine()?.split(separator: " ").map{ $0.description }
    
    guard input != nil && input!.count == 2 else {
        print(ErrorMessage.InputIsNotValidError.rawValue)
        return
    }
    guard studentScore[input![0]] != nil else {
        print(input![0] + ErrorMessage.NotFoundStudentNameError.rawValue)
        return
    }
    guard studentScore[input![0]]![input![1]] != nil else {
        print(input![1] + ErrorMessage.NotFountStudentScoreError.rawValue)
        return
    }
    
    studentScore[input![0]]!.removeValue(forKey: input![1])
    print("\(input![0]) 학생의 \(input![1]) 과목의 성적이 삭제되었습니다.")
    print(studentScore)
}
