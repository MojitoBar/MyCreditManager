//
//  CreditProgramStart.swift
//  MyCreditManager
//
//  Created by jito on 2023/05/01.
//

import Foundation

func creditProgramStart() {
    var input: String

    while(true) {
        print("원하는 기능을 입력해 주세요")
        print("1: 학생추가, 2: 학생삭제, 3: 성적추가(변경), 4: 성적삭제, 5: 평점보기, X: 종료")
        
        input = readLine() ?? ""
        
        switch input {
        case "1":
            addStudent()
        case "2":
            removeStudent()
        case "3":
            addScore()
        case "4":
            removeScore()
        case "5":
            getGrade()
        case "X":
            print("프로그램을 종료합니다...")
            return
        default:
            print(ErrorMessage.InputMenuError.rawValue)
        }
    }
}
