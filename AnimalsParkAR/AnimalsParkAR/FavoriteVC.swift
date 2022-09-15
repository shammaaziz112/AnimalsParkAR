//
//  FavoriteVC.swift
//  AnimalsParkAR
//
//  Created by Hessa on 20/02/1444 AH.
//
//favoriteCell
import UIKit

var favoriteList = [Animals]()

class FavoriteVC: UIViewController {
    
    var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var favoriteName:String?
    var favoriteImage:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if favoriteName != "" && favoriteImage != ""{
            addAnimal(getName:favoriteName!, getImage:favoriteImage!)
            print("added")
        }else{
            fetchCorData()
            print("fetch")
        }
        // Do any additional setup after loading the view.
    }
    
    func saveData(){
        do{
            try context.save()
        }catch let error{
            print(error)
        }
    }
    
    func addAnimal(getName:String, getImage:String){
        let newAnimal = Animals(context: context)
        newAnimal.name = getName
        newAnimal.image = getImage
        
        saveData()
        fetchCorData()
    }
    
    func fetchCorData(){
        do{
            favoriteList = try context.fetch(Animals.fetchRequest())
        }catch let error{
            print(error)
        }
    }
}

