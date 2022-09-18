//
//  AnimalsDetailsVC.swift
//  AnimalsParkAR
//
//  Created by Hessa on 18/02/1444 AH.
//

import UIKit
import AVFoundation
import RealityKit

class AnimalsDetailsVC: UIViewController {

    @IBOutlet weak var AnimalsCollectionView: UICollectionView!
    @IBOutlet weak var FilterCollectionView: UICollectionView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var categoryAnimal:[String] = ["برية","بحرية","برمائية","الحشرات","الرئيسية"]
    var BackUpAnimal = animalsArray
    
    var name:String?
    var image:String?
    var detail:String?
    var soundDetail:String?
    
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
            VC.animalSoundDetail = soundDetail!
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
            return categoryAnimal.count
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
            cellF.filterButton.setTitle(categoryAnimal[indexPath.row], for: .normal)
            cellF.filterButton.tag = indexPath.row
            cellF.filterButton.addTarget(self, action: #selector(animalFilter), for: .touchUpInside)
            return cellF
        }
    }
    
    @objc func animalFilter(sender:UIButton){
        let indexPath1 = IndexPath(row: sender.tag, section: 0)
        let filterItem = categoryAnimal[indexPath1.row]
        var filter = [Animal]()
        
        if filterItem == "الرئيسية"{
            animalsArray = BackUpAnimal
        }else{
            for item in animalsArray {
                if animalsArray[indexPath1.row].category.contains(filterItem){
                    filter = [item]
                }
            }
            
            animalsArray = filter
        }
        
        AnimalsCollectionView.reloadData()

    }
}

extension AnimalsDetailsVC: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        name = animalsArray[indexPath.row].name
        detail = animalsArray[indexPath.row].description
        image = animalsArray[indexPath.row].image
        soundDetail = animalsArray[indexPath.row].sound
        
        performSegue(withIdentifier: "showAnimal", sender: nil)
    }
}

extension AnimalsDetailsVC: UISearchBarDelegate{
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText == ""{
        animalsArray = BackUpAnimal
        AnimalsCollectionView.reloadData()
        }else{
        animalsArray = BackUpAnimal.filter({( animal : Animal) -> Bool in
                return animal.name.contains(searchText)})
        AnimalsCollectionView.reloadData()
        }
    }
}
