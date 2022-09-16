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
    var name:String?
    var image:String?
    var detail:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AnimalsCollectionView.register(UINib(nibName: "AnimalsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "AnimalsCell")
        FilterCollectionView.register(UINib(nibName: "FilterCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "FilterCell")

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showAnimal", let VC = segue.destination as? ShowAnimalDetailVC{
            VC.animalName = name
            VC.animalImage = image!
            VC.animalText = detail!
        }else if segue.identifier == "favoriteAnimals", let VC = segue.destination as? FavoriteVC{
                        VC.favoriteName = name
                        VC.favoriteImage = image!
            }
        
    }
}

extension AnimalsDetailsVC: UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == AnimalsCollectionView{
            return animalsArray.count
        }else {
            return 20
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == AnimalsCollectionView{
            let cellA = collectionView.dequeueReusableCell(withReuseIdentifier: "AnimalsCell", for: indexPath) as! AnimalsCollectionViewCell
            cellA.animalImage.image = UIImage(named: animalsArray[indexPath.row].image)
            cellA.animalName.text = animalsArray[indexPath.row].name
            return cellA
        }else {
            let cellF = collectionView.dequeueReusableCell(withReuseIdentifier: "FilterCell", for: indexPath) as! FilterCollectionViewCell
            cellF.filterButton.setTitle("Animal", for: .normal)
            return cellF
        }
    }
    

}

extension AnimalsDetailsVC: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        name = animalsArray[indexPath.row].name
        detail = animalsArray[indexPath.row].description
        image = animalsArray[indexPath.row].image
        
        performSegue(withIdentifier: "showAnimal", sender: nil)
    }
}
