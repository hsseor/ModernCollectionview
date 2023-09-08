//
//  BannerCollectionViewCell.swift
//  MVVMPractice
//
//  Created by 홍서린 on 2023/09/08.
//

import Foundation
import UIKit

class BannerCollectionViewCell: UICollectionViewCell{
    
    static let id = "BannerCell"
    let titleLabel = UILabel()
    let backgroundImage = UIImageView()
    
    override init(frame: CGRect){
        super.init(frame: frame)
            setUI()
        
    }
    
    private func setUI(){
        
        self.addSubview(titleLabel)
        self.addSubview(backgroundImage)
        
        titleLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        backgroundImage.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            // = make.leading.trailing.top.bottom.equalToSuperview() , edges 는 전체영역을 의미
        }
        
    }
    
    //init 함수에 이미지를 넣어줄 수 없어서 config 함수를 받아서 사용
    public func config(title: String, imageUrl: String){
        //title, image set
        
        titleLabel.text = "Title"
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
