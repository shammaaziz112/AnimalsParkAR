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

    @IBOutlet weak var myAnimalsCollectionView: UICollectionView!
    var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var favoriteName:String?
    var favoriteImage:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myAnimalsCollectionView.register(UINib(nibName: "FavoriteCVCell", bundle: nil), forCellWithReuseIdentifier: "FavoritCell")
        myAnimalsCollectionView.delegate = self
        myAnimalsCollectionView.dataSource =  self

//        addAnimal()
        fetchCorData()
        

        // Do any additional setup after loading the view.
    }
    
    func addAnimal(){
        let newAnimal = Animals(context: context)
        newAnimal.name = "الماعز"
        newAnimal.image = "gota"
        newAnimal.name = "نمل"
        newAnimal.image = "ant"
        newAnimal.name = "خفاش"
        newAnimal.image = "bat"
        newAnimal.name = "نحلة"
        newAnimal.image = "Bees"
        newAnimal.name =  "قط"
        newAnimal.image = "cat"
        newAnimal.name =  "بقرة"
        newAnimal.image = "Cow"
        newAnimal.name =  "كلب بوليسي"
        newAnimal.image = "dog"
        newAnimal.name =  "النعامه استرالي"
        newAnimal.image = "ostrich"
        newAnimal.name =  "بومة"
        newAnimal.image = "owl"
        newAnimal.name = "الخنزير"
        newAnimal.image = "pig"
        newAnimal.name = "الدب"
        newAnimal.image = "bear"
        newAnimal.name =  "الغزال"
        newAnimal.image =  "gazelle"
        newAnimal.name = "البط"
        newAnimal.image = "duck"
        newAnimal.name = "الاسد"
        newAnimal.image = "Lion"
        newAnimal.name = "الحوت القاتل"
        newAnimal.image = "killerwhale"
        newAnimal.name = "ذئب"
        newAnimal.image = "wolf"
        newAnimal.name = "الجمل"
        newAnimal.image = "camel"
        newAnimal.name = "الحصان"
        newAnimal.image = "horse"
        newAnimal.name = "الباندا"
        newAnimal.image = "panda"
        newAnimal.name = "وحيد القرن"
        newAnimal.image = "rhino"
        newAnimal.name = "الافعى"
        newAnimal.image = "snake"
        newAnimal.name = "النمر"
        newAnimal.image = "Tiger"
        newAnimal.name = "الحمار الوحشي"
        newAnimal.image = "Zebra"
        newAnimal.name = "الغوريلا"
        newAnimal.image = "gorilla"
        newAnimal.name = "الفهد"
        newAnimal.image = "cheetah"
        newAnimal.name = "القرد"
        newAnimal.image = "Monkey"
        newAnimal.name = "ارنب"
        newAnimal.image = "rabbit"
        newAnimal.name = "السلحفاة"
        newAnimal.image = "Turtle"
        newAnimal.name = "الدجاجة"
        newAnimal.image = "chicken"
        newAnimal.name = "الدلفين"
        newAnimal.image = "Dolphin"
        newAnimal.name = "الزرافة"
        newAnimal.image = "giraffe"
        newAnimal.name = "الطاووس"
        newAnimal.image = "peacock"
        newAnimal.name = "البطريق"
        newAnimal.image = "penguin"
        newAnimal.name = "الراكون"
        newAnimal.image = "raccoon"
        newAnimal.name = "الحرباية"
        newAnimal.image = "chameleon"
        newAnimal.name = "الفيل"
        newAnimal.image = "Elephant"
        newAnimal.name = "الكنغر"
        newAnimal.image = "Kangaroo"
        newAnimal.name = "الفراشة"
        newAnimal.image = "butterfly"
        newAnimal.name = "التمساح"
        newAnimal.image = "crocodile"
        newAnimal.name = "الجراد"
        newAnimal.image = "locust"
        newAnimal.name = "الدعسوقة"
        newAnimal.image = "ladybug"
        newAnimal.name = "الحوت الازرق"
        newAnimal.image = "bluewhale"
        newAnimal.name = "سمكة"
        newAnimal.image = "fish"
        newAnimal.name = "سمكة الذهبية"
        newAnimal.image = "GoldFish"
        newAnimal.name = "ثعبان البحر"
        newAnimal.image = "eel"
        newAnimal.name = "قرش المطرقة"
        newAnimal.image = "hammerheadshark"
        newAnimal.name = "القرش القطي الاطلسي"
        newAnimal.image = "catshark"
        newAnimal.name = "سمكة شيطان البحر"
        newAnimal.image = "Manta alfredi"
        newAnimal.name = "العصفور"
        newAnimal.image = "bird"
        newAnimal.name = "السلطعون"
        newAnimal.image = "crab"
        newAnimal.name = "الضفدع"
        newAnimal.image = "frog"
        newAnimal.name = "قنديل البحر"
        newAnimal.image = "jellyFish"
        
        saveData()
        fetchCorData()
        myAnimalsCollectionView.reloadData()
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
            favoriteList = try context.fetch(Animals.fetchRequest())
        }catch let error{
            print(error)
        }
    }
}

extension FavoriteVC: UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return favoriteList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  myAnimalsCollectionView.dequeueReusableCell(withReuseIdentifier: "FavoritCell", for: indexPath) as! FavoriteCVCell
    
        
        DispatchQueue.global().sync {
            cell.animalsImage.image = UIImage(named: favoriteList[indexPath.row].image ?? "nil")
          
            DispatchQueue.main.async {

                
                cell.nameAnimalLabel.text = favoriteList[indexPath.row].name

            }
        }
 
        return cell
    }
    
    
    
    
    
}




