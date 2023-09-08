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
        
        //컬렉션뷰 cell UI - 등록
        collectionview.register(BannerCollectionViewCell.self, forCellWithReuseIdentifier: BannerCollectionViewCell.id)
        //레이아웃 만들어서 넣기
        collectionview.setCollectionViewLayout(createLayout(), animated: true)
    }
    
    //각각 다른 레이아웃을 return 해주기 위해서 필요한 부분. 지금은 하나만 할거여서 하나만 return.
    private func createLayout() -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout(sectionProvider: {[weak self] sectionIndex, _ in
            
            return self?.createBannerSection()
        })
    }
    
    private func createBannerSection() -> NSCollectionLayoutSection{
        
        //item
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        //group
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(200))
            //오른쪽으로 스크롤 될 수 있는 걸 만들거라서 horizontal
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        //section
        let section = NSCollectionLayoutSection(group: group)
            //스크롤에 대한 설정
        section.orthogonalScrollingBehavior = .groupPaging
        return section
    }

}


//전체 흐름정리
//컬렉션뷰 cell UI - 등록
//레이아웃 구현 - 3가지
//datasource --> cellProvider
//snapshot -> datasource.apply(snapshot)
