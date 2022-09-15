//
//  ShowAnimalDetailVC.swift
//  AnimalsParkAR
//
//  Created by Hessa on 19/02/1444 AH.
//

import UIKit

class ShowAnimalDetailVC: UIViewController {

    @IBOutlet weak var showImageAnimal: UIImageView!
    @IBOutlet weak var showTextAnimal: UITextField!
    
    var animalName: String?
    var animalImage:String?
    var animalText:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showImageAnimal.image = UIImage(named: animalImage!)
        showTextAnimal.text = animalText
        self.title = animalName
        // Do any additional setup after loading the view.
    }
}
