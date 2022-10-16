
//
//  StockRankViewController.swift
//  StockRank
//
//  Created by HYERYEONG on 2022/08/16.
//

// <UICollectionView를 이용해서 리스트 및 그리드를 개발할 때 고려요소>
    // Data, Presentation, Layout

import UIKit

class StockRankViewController: UIViewController, UICollectionViewDelegate {
    
    //Data - 어떤 데이터를 쓸지? -> stockList
    //=> StockModel에 만들어둔 데이터 사용
    //=> Assets에도 회사아이콘 들어있음
    
    let stockList: [StockModel] = StockModel.list
    //StockModel의 데이터를 가져오겠다