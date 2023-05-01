//
//  ErrorMessage.swift
//  MyCreditManager
//
//  Created by jito on 2023/05/01.
//

import Foundation

enum ErrorMessage: String {
    case InputMenuError = "뭔가 잘못 입력되었습니다. 1~5 사이의 숫자 혹은 X를 입력해 주세요."
    case InputIsNotValidError = "입력이 잘못되었습니다. 다시 확인해주세요."
    case DuplicateStudentNameError = "은 이미 존재하는 학생입니다. 추가하지 않습니다."
    case NotFoundStudentNameError = " 학생을 찾지 못했습니다."
    case NotFountStudentScoreError = " 과목의 성적이 없습니다."
}
