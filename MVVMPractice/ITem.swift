//
//  ITem.swift
//  MVVMPractice
//
//  Created by 홍서린 on 2023/09/08.
//

import Foundation


//섹션과 아이템 정의 , 컬렉션뷰 섹션으로 들어가기 위해서 hashable 이라는 프로토콜 채택
struct Section: Hashable {
    let id: String
}

//섹션에 들어갈 아이템 3가지 타입. 여러종류가 들어갈 거라서 enum으로 정의
enum Item: Hashable {
    case banner(HomeItem)
    case normalCarousel(HomeItem)
    case listCarousel(HomeItem)
    
}

//해당 데이터를 아이템 타입 안에 넣어줘야함
struct HomeItem: Hashable{
    let title: String
    let subTitle: String?
    let imageUrl: String
}
