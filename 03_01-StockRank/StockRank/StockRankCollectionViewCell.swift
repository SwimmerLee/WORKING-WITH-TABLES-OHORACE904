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
        companyIconImageView.image = UIImage(named: stock.imageName)//stock의 imagename을 가져옴
        companyNameLabel.text = stock.name
        //회사이름은 stock의 name
        companyPriceLabel.text = "\(convertToCurrencyFormat(price: stock.price)) 원"
        //가격은 stock의 price
        
        //-값은 파란색으로 표시
        let color: UIColor
        if stock.diff > 0 {
            color = UIColor.systemRed
        }else{
            color = UIColor.systemBlue
        }
        diffLabel.textColor = color
        diffLabel.text = "\(stock.diff)%"
    }
     
    //콤마 넣기
    func convertToCurrencyFormat(price: Int) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.maximumFractionDigits = 0
        let result = numberFormatter.string(from: NSNumber(value:price)) ?? ""
        return result
    }
    
    
            
}
