//
//  ViewController.swift
//  MVVMPractice
//
//  Created by 홍서린 on 2023/09/08.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    let collectionview = UICollectionView(frame: .zero, collectionViewLayout: .init())
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.'
        
        //컬렉션뷰 cell UI - 등록
        collectionview.register(BannerCollectionViewCell.self, forCellWithReuseIdentifier: BannerCollectionViewCell.id)
    }


}


//전체 흐름정리
//컬렉션뷰 cell UI - 등록
//레이아웃 구현 - 3가지
//datasource --> cellProvider
//snapshot -> datasource.apply(snapshot)
