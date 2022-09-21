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
    
    var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    var listArray = [Animals]()
    
    @IBOutlet weak var DesignView: UIView!
    @IBOutlet weak var DesignSearch: UISearchBar!
    @IBOutlet weak var AnimalsCollectionView: UICollectionView!
    @IBOutlet weak var segmentedControlOutlet: UISegmentedControl!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var messageText: UILabel!
    @IBOutlet weak var imageFavoirtie: UIButton!
    
    var filter = [Animal]()
    
    var mainName:String?
    var mainImage:String?
    var mainDetail:String?
    var mainSoundDetail:String?
    var inFavorite:Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UISearchBar.appearance().semanticContentAttribute = .forceRightToLeft
        UITextField.appearance(whenContainedInInstancesOf: [UISearchBar.self]).textAlignment = .right
        UIView.appearance().semanticContentAttribute = .forceRightToLeft
        
        DesignView.layer.cornerRadius = 16
        DesignSearch.layer.cornerRadius = 16
        
        AnimalsCollectionView.register(UINib(nibName: "AnimalsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "AnimalsCell")
        // Do any additional setup after loading the view.
    }
    
 
    @IBAction func displayFavirite(_ sender: Any) {
        messageText.text = ""
        inFavorite.toggle()
                fetchCorData()
                if inFavorite == true {
                    segmentedControlOutlet.isHidden = true
                    imageFavoirtie.setImage(UIImage(systemName: "house"), for: .normal)
                    listArray = listArray.filter({(animal:Animals) -> Bool in
                        (animal.favorite == true)
                    })
                    if listArray.isEmpty{
                        messageText.text = "لا توجد حيوانات في المفضلة"
                    }

                }else{
                    segmentedControlOutlet.isHidden = false
                    imageFavoirtie.setImage(UIImage(systemName: "bookmark"), for: .normal)
                }
                AnimalsCollectionView.reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        fetchCorData()
        if listArray.isEmpty{
                            for item in 0..<animalsArray.count {
                                addAnimal(getName:animalsArray[item].name, getImage:animalsArray[item].image, getDetail:animalsArray[item].description, getSound:animalsArray[item].sound, getCategory:animalsArray[item].category, getFavorite:animalsArray[item].likeIt)
                            }
        }
        

        
        
    }
    
        func addAnimal(getName:String, getImage:String, getDetail:String, getSound:String, getCategory:String, getFavorite:Bool){
            let newAnimal = Animals(context: context)
            newAnimal.name = getName
            newAnimal.image = getImage
            newAnimal.detail = getDetail
            newAnimal.sound = getSound
            newAnimal.category = getCategory
            newAnimal.favorite = getFavorite

            saveData()
            fetchCorData()
        }
    
    func saveData(){
        do{
            try context.save()
        }catch let error{
            print(error)
        }
    }
    
    func fetchCorData(){
        do{
            listArray = try context.fetch(Animals.fetchRequest())
//            saveData()
        }catch let error{
            print(error)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showAnimal", let VC = segue.destination as? ShowAnimalDetailVC{
            VC.animalName = mainName
            VC.animalImage = mainImage!
            VC.animalText = mainDetail!
            VC.animalSoundDetail = mainSoundDetail!
        }
        
    }
    
    @IBAction func filterAnimal(_ sender: Any) {
        
        
        switch segmentedControlOutlet.selectedSegmentIndex{
        case 0:
            fetchCorData()
            AnimalsCollectionView.reloadData()
        case 1:
            fetchCorData()
            listArray = listArray.filter({(animal:Animals) -> Bool in
                (animal.category!.contains("1"))
            })
            AnimalsCollectionView.reloadData()
            
        case 2:
            fetchCorData()
            listArray = listArray.filter({(animal:Animals) -> Bool in
                (animal.category!.contains("2"))
            })
            AnimalsCollectionView.reloadData()
            
        case 3:
            fetchCorData()
            listArray = listArray.filter({(animal:Animals) -> Bool in
                (animal.category!.contains("3"))
            })
            AnimalsCollectionView.reloadData()
        case 4:
            fetchCorData()
            listArray = listArray.filter({(animal:Animals) -> Bool in
                (animal.category!.contains("4"))
            })
            AnimalsCollectionView.reloadData()
        default:
            print("")
        }
    }
    
    
}

extension AnimalsDetailsVC: UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listArray.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cellA = collectionView.dequeueReusableCell(withReuseIdentifier: "AnimalsCell", for: indexPath) as! AnimalsCollectionViewCell
        
     cellA.animalImage.image = UIImage(named: listArray[indexPath.row].image!)
        cellA.animalName.text = listArray[indexPath.row].name
    
       
        cellA.favoriteButton.tag = indexPath.row
        cellA.favoriteButton.addTarget(self, action: #selector(addFavorite), for: .touchUpInside)
    
    if listArray[indexPath.row].favorite == true{
        cellA.heartImage.image = UIImage(named: "heartfill")
    }else{
        cellA.heartImage.image = UIImage(named: "heart")
    }
    
        return cellA
    }
    
    @objc func addFavorite(sender:UIButton){
        let index = IndexPath(row: sender.tag, section: 0)
        listArray[index.row].favorite.toggle()
        AnimalsCollectionView.reloadData()
        saveData()
    }
    
}

extension AnimalsDetailsVC: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        mainName = listArray[indexPath.row].name
        mainDetail = listArray[indexPath.row].detail
        mainImage = listArray[indexPath.row].image
        mainSoundDetail = listArray[indexPath.row].sound
        
        performSegue(withIdentifier: "showAnimal", sender: nil)
    }
    
}



extension AnimalsDetailsVC: UISearchBarDelegate{


    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText == ""{
         fetchCorData()
         AnimalsCollectionView.reloadData()
         }else{
             listArray = listArray.filter({(animal:Animals) -> Bool in
                 return (animal.name!.contains(searchText))
             })
             AnimalsCollectionView.reloadData()
        }
    }
}

