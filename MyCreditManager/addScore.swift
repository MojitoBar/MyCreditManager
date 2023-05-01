//
//  addScore.swift
//  MyCreditManager
//
//  Created by jito on 2023/05/01.
//

import Foundation

func addScore() {
    print("성적을 추가할 학생의 이름, 과목 이름, 성적(A+, A, F 등)을 띄어쓰기로 구분하여 차례로 작성해주세요.")
    print("입력예) Mickey Swift A+")
    print("만약에 학생의 성적 중 해당 과목이 존재하면 기존 점수가 갱신됩니다.")
    let input = readLine()?.split(separator: " ").map{ $0.description }
    
    guard input != nil && input!.count == 3 else {
        print(ErrorMessage.InputIsNotValidError.rawValue)
        return
    }
    guard studentScore[input![0]] != nil else {
        print(input![0] + ErrorMessage.NotFoundStudentNameError.rawValue)
        return
    }
    guard score[input![2]] != nil else {
        print(ErrorMessage.InputIsNotValidError.rawValue)
        return
    }
    
    studentScore[input![0]]![input![1]] = input![2]
    print(studentScore)
    print("\(input![0]) 학생의 \(input![1]) 과목이 \(input![2])로 추가(변경)되었습니다.")
}
