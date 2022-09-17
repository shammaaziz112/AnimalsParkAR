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
    @IBOutlet weak var showTextAnimal: UITextField!
    
    var animalName: String?
    var animalImage:String?
    var animalText:String?
    var animalSoundDetail:String?
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showImageAnimal.image = UIImage(named: animalImage!)
        showTextAnimal.text = animalText
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
