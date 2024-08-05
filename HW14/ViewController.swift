//
//  ViewController.swift
//  HW14
//
//  Created by Максим Громов on 03.08.2024.
//

import UIKit
import SnapKit
class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var collection: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! myCollectionViewCell
        cell.image.image = UIImage(systemName: devices[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return devices.count
    }
    
    
    
    
    let devices = ["airtag", "macpro.gen3", "macbook.gen2", "macstudio", "ipod", "iphone.gen3", "ipad.gen2", "applewatch.watchface", "tv"]

    override func viewDidLoad() {
        super.viewDidLoad()
        collection.dataSource = self
        collection.delegate = self
    }


}

