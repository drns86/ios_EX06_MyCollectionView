//
//  ViewController.swift
//  EX06_MyCollectionView
//
//  Created by 동명섭 on 02/02/2020.
//  Copyright © 2020 downy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet var collectionView: UICollectionView!
    let names:[String] = [
    "아이린", "태연", "아이유", "윤아", "수지", "태연", "아이유", "윤아", "수지", "태연", "아이유", "윤아", "수지"]
    let arts:[String] = [
    "빨간맛, 파워업", "호텔델루나, 사계", "좋은날, 스물셋", "효리네 민박, 바람이불면", "건축학 개론, FacesOfLove", "호텔델루나, 사계", "좋은날, 스물셋", "효리네 민박, 바람이불면", "건축학 개론, FacesOfLove", "호텔델루나, 사계", "좋은날, 스물셋", "효리네 민박, 바람이불면", "건축학 개론, FacesOfLove"]
    let images:[String] = [
        "img1.png", "img2.png", "img3.png","img4.png", "img5.png", "img2.png", "img3.png","img4.png", "img5.png", "img2.png", "img3.png","img4.png", "img5.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //일반 이벤트와 데이터 소스 이벤트 수신자 지정
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
    }
    
    //MARK: - 데이터 소스 이벤트
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return names.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: "MyCollectionViewCell", for: indexPath) as! MyCollectionViewCell
        cell.idolName.text = names[indexPath.row]
        cell.idolArt.text = arts[indexPath.row]
        cell.idolImageView.image = UIImage(named: images[indexPath.row])
                
        return cell
    }
    
    //MARK:- 일반 이벤트
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("아이템 선택됨.", indexPath.row)
    }
}

