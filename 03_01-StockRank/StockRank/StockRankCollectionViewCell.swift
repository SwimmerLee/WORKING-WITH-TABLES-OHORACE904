//
//  StockRankCollectionViewCell.swift
//  StockRank
//
//  Created by HYERYEONG on 2022/08/17.
//

//collectionView를 표현해주기위함

import UIKit

class StockRankCollectionViewCell: UICollectionViewCell {
    
    // uicomponent를 연결하자
    // uicomponent 에 데이터를 업데이트 하는 코드를 넣자
    
    //contentview에 있는 것 연결
    @IBOutlet weak var rankLabel: UILabel!
    
    @IBOutlet weak var companyIconImageView: UIImageView!
    
    @IBOutlet weak var companyNameLabel: UILabel!
    
    @IBOutlet weak var companyPriceLabel: UILabel!
    
    @IBOutlet weak var diffLabel: UILabel!
    
    //데이터를 업데이트하는 매소드
    func configure(_ stock: StockModel) {
        rankLabel.text = "\(stock.rank)"
        companyIconImageView.imag