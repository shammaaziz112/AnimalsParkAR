//
//  ShowAnimalDetailVC.swift
//  AnimalsParkAR
//
//  Created by Hessa on 19/02/1444 AH.
//

import UIKit
import AVFoundation
import RealityKit

class ShowAnimalDetailVC: UIViewController {

    @IBOutlet weak var showImageAnimal: UIImageView!
    @IBOutlet weak var arButton: UIButton!
    @IBOutlet weak var readInfoButton: UIButton!
    
    @IBOutlet weak var showAnimalTextLabel: UILabel!
    @IBOutlet weak var DesignView: UIView!
    var animalName: String?
    var animalImage:String?
    var animalText:String?
    var animalSoundDetail:String?
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = #colorLiteral(red: 0.9491549134, green: 0.5556038618, blue: 0.387765348, alpha: 1)


        arButton.layer.cornerRadius = 10
        readInfoButton.layer.cornerRadius = 10
        
        showImageAnimal.layer.cornerRadius = 16
        DesignView.layer.cornerRadius = 16
        
        showImageAnimal.image = UIImage(named: animalImage!)
        showAnimalTextLabel.text = animalText
        self.title = animalName
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showAR", let VC = segue.destination as? ViewController{
            VC.animalNameAR = animalName!
        }
    }
    
    @IBAction func showAnimalAR(_ sender: Any) {
        performSegue(withIdentifier: "showAR", sender: nil)
    }
    
    @IBAction func soundButton(_ sender: Any) {

        let url = Bundle.main.url(forResource: animalSoundDetail!, withExtension: "mp3")!

            do {
                player = try AVAudioPlayer(contentsOf: url)
                guard let player = player else { return }

                player.play()

            } catch let error as NSError {
                print(error.description)
            }
    }
}
