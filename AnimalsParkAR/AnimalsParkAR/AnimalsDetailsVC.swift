//
//  AnimalsDetailsVC.swift
//  AnimalsParkAR
//
//  Created by Hessa on 18/02/1444 AH.
//

import UIKit

class AnimalsDetailsVC: UIViewController {

    @IBOutlet weak var AnimalsCollectionView: UICollectionView!
    @IBOutlet weak var FilterCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AnimalsCollectionView.register(UINib(nibName: "AnimalsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "AnimalsCell")
        FilterCollectionView.register(UINib(nibName: "FilterCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "FilterCell")

        // Do any additional setup after loading the view.
    }
}

extension AnimalsDetailsVC: UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == AnimalsCollectionView{
            return 20
        }else {
            return 20
        }
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == AnimalsCollectionView{
            let cellA = collectionView.dequeueReusableCell(withReuseIdentifier: "AnimalsCell", for: indexPath) as! AnimalsCollectionViewCell
            cellA.animalImage.image = UIImage(named: "Aa")
            return cellA
        }else {
            let cellF = collectionView.dequeueReusableCell(withReuseIdentifier: "FilterCell", for: indexPath) as! FilterCollectionViewCell
            cellF.filterButton.setTitle("Animal", for: .normal)
            return cellF
        }
    }
}
