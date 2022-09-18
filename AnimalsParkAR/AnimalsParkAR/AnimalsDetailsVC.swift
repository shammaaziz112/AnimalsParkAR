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

    @IBOutlet weak var segmentedControlOutlet: UISegmentedControl!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var filter = [Animal]()
    var BackUpAnimal = animalsArray
    
    var name:String?
    var image:String?
    var detail:String?
    var soundDetail:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AnimalsCollectionView.register(UINib(nibName: "AnimalsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "AnimalsCell")
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
    
    @IBAction func filterAnimal(_ sender: Any) {
        
        
        switch segmentedControlOutlet.selectedSegmentIndex{
        case 0:
            animalsArray = BackUpAnimal
            AnimalsCollectionView.reloadData()
        case 1:
            animalsArray = BackUpAnimal
            for item in 0..<animalsArray.count {
                if animalsArray[item].category.contains("1"){
                    filter.append(animalsArray[item])
                    }
                }
            animalsArray = filter
            AnimalsCollectionView.reloadData()
        case 2:
            animalsArray = BackUpAnimal
            for item in 0..<animalsArray.count {
                if animalsArray[item].category.contains("2"){
                    filter.append(animalsArray[item])
                    }
                }
            animalsArray = filter
            AnimalsCollectionView.reloadData()
        case 3:
            animalsArray = BackUpAnimal
            for item in 0..<animalsArray.count {
                if animalsArray[item].category.contains("3"){
                    filter.append(animalsArray[item])
                    }
                }
            animalsArray = filter
            AnimalsCollectionView.reloadData()
        case 4:
            animalsArray = BackUpAnimal
            for item in 0..<animalsArray.count {
                if animalsArray[item].category.contains("4"){
                    filter.append(animalsArray[item])
                    }
                }
            animalsArray = filter
            AnimalsCollectionView.reloadData()
        default:
            print("")
        }
    }
    
    
}

extension AnimalsDetailsVC: UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return animalsArray.count
       
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
            let cellA = collectionView.dequeueReusableCell(withReuseIdentifier: "AnimalsCell", for: indexPath) as! AnimalsCollectionViewCell
            cellA.animalImage.image = UIImage(named: animalsArray[indexPath.row].image)
            cellA.animalName.text = animalsArray[indexPath.row].name
            return cellA
        }
    
//    @objc func animalFilter(sender:UIButton){
//        let indexPath1 = IndexPath(row: sender.tag, section: 0)
//        let filterItem = categoryAnimal[indexPath1.row]
//        var filter = [Animal]()
//
//        if filterItem == "الرئيسية"{
//            animalsArray = BackUpAnimal
//        }else{
//            for item in animalsArray {
//                if animalsArray[indexPath1.row].category.contains(filterItem){
//                    filter = [item]
//                }
//            }
//
//            animalsArray = filter
//        }
//
//        AnimalsCollectionView.reloadData()
//
//    }
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
            for item in 0..<animalsArray.count {
                if animalsArray[item].name == searchText{
                    filter.append(animalsArray[item])
                    }
                }
            animalsArray = filter
            AnimalsCollectionView.reloadData()
        }
    }
}
