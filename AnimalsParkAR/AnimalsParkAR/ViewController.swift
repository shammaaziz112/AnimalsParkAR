//
//  ViewController.swift
//  AnimalsParkAR
//
//  Created by Hessa on 18/02/1444 AH.
//

import UIKit
import RealityKit
import ARKit

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    var animalNameAR:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let standardConfiguration: ARWorldTrackingConfiguration = {
            let configuration = ARWorldTrackingConfiguration()
            configuration.planeDetection = .horizontal
            return configuration
        }()
        // Run the view's session
        arView.session.run(standardConfiguration)
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        switch animalNameAR {
        case "ماعز":
            let boxAnchor = try! Experience.loadGoat()
            arView.scene.anchors.append(boxAnchor)
        case "نمل":
            let boxAnchor = try! Experience.loadAnt()
            arView.scene.anchors.append(boxAnchor)
        case "خفاش":
            let boxAnchor = try! Experience.loadBat()
            arView.scene.anchors.append(boxAnchor)
        case "نحلة":
            let boxAnchor = try! Experience.loadBee()
            arView.scene.anchors.append(boxAnchor)
        case "قط":
            let boxAnchor = try! Experience.loadCat()
            arView.scene.anchors.append(boxAnchor)
        case "بقرة":
            let boxAnchor = try! Experience.loadCow()
            arView.scene.anchors.append(boxAnchor)
        case "كلب ":
            let boxAnchor = try! Experience.loadDog()
            arView.scene.anchors.append(boxAnchor)
        case "نعامة ":
            let boxAnchor = try! Experience.loadEmu()
            arView.scene.anchors.append(boxAnchor)
        case "بومة":
            let boxAnchor = try! Experience.loadOwl()
            arView.scene.anchors.append(boxAnchor)
        case "خنزير":
            let boxAnchor = try! Experience.loadPig()
            arView.scene.anchors.append(boxAnchor)
        case "دب":
            let boxAnchor = try! Experience.loadBear()
            arView.scene.anchors.append(boxAnchor)
        case "غزال":
            let boxAnchor = try! Experience.loadDeer()
            arView.scene.anchors.append(boxAnchor)
        case "بطة":
            let boxAnchor = try! Experience.loadDuck()
            arView.scene.anchors.append(boxAnchor)
        case "أسد":
            let boxAnchor = try! Experience.loadLion()
            arView.scene.anchors.append(boxAnchor)
        case "الحوت القاتل":
            let boxAnchor = try! Experience.loadOrca()
            arView.scene.anchors.append(boxAnchor)
        case "ذئب":
            let boxAnchor = try! Experience.loadWolf()
            arView.scene.anchors.append(boxAnchor)
        case "جمل":
            let boxAnchor = try! Experience.loadCamel()
            arView.scene.anchors.append(boxAnchor)
        case "حصان":
            let boxAnchor = try! Experience.loadHorse()
            arView.scene.anchors.append(boxAnchor)
        case "باندا":
            let boxAnchor = try! Experience.loadPanda()
            arView.scene.anchors.append(boxAnchor)
        case "وحيد القرن":
            let boxAnchor = try! Experience.loadRhino()
            arView.scene.anchors.append(boxAnchor)
        case "افعى":
            let boxAnchor = try! Experience.loadSnake()
            arView.scene.anchors.append(boxAnchor)
        case "نمر":
            let boxAnchor = try! Experience.loadTiger()
            arView.scene.anchors.append(boxAnchor)
        case "حمار الوحشي":
            let boxAnchor = try! Experience.loadZebra()
            arView.scene.anchors.append(boxAnchor)
        case "غوريلا":
            let boxAnchor = try! Experience.loadGorill()
            arView.scene.anchors.append(boxAnchor)
        case "الفهد":
            let boxAnchor = try! Experience.loadJaguar()
            arView.scene.anchors.append(boxAnchor)
        case "قرد":
            let boxAnchor = try! Experience.loadMonkey()
            arView.scene.anchors.append(boxAnchor)
        case "أرنب":
            let boxAnchor = try! Experience.loadRabbit()
            arView.scene.anchors.append(boxAnchor)
        case "سلحفاة":
            let boxAnchor = try! Experience.loadTurtle()
            arView.scene.anchors.append(boxAnchor)
        case "دجاجة":
            let boxAnchor = try! Experience.loadChicken()
            arView.scene.anchors.append(boxAnchor)
        case "دُلفين":
            let boxAnchor = try! Experience.loadDolphin()
            arView.scene.anchors.append(boxAnchor)
        case "زرافة":
            let boxAnchor = try! Experience.loadGiraffe()
            arView.scene.anchors.append(boxAnchor)
        case "طاووس":
            let boxAnchor = try! Experience.loadPeacock()
            arView.scene.anchors.append(boxAnchor)
        case "بطريق":
            let boxAnchor = try! Experience.loadPenguin()
            arView.scene.anchors.append(boxAnchor)
        case "راكون":
            let boxAnchor = try! Experience.loadRaccoon()
            arView.scene.anchors.append(boxAnchor)
        case "حرباية":
            let boxAnchor = try! Experience.loadReptile()
            arView.scene.anchors.append(boxAnchor)
        case "فيل":
            let boxAnchor = try! Experience.loadElephant()
            arView.scene.anchors.append(boxAnchor)
        case "كنغر":
            let boxAnchor = try! Experience.loadKangaroo()
            arView.scene.anchors.append(boxAnchor)
        case "سمكة الشراع":
            let boxAnchor = try! Experience.loadSailfish()
            arView.scene.anchors.append(boxAnchor)
        case "فراشة":
            let boxAnchor = try! Experience.loadButterfly()
            arView.scene.anchors.append(boxAnchor)
        case "تمساح":
            let boxAnchor = try! Experience.loadCrocodile()
            arView.scene.anchors.append(boxAnchor)
        case "السمكة المضيئة":
            let boxAnchor = try! Experience.loadAnglerfish()
            arView.scene.anchors.append(boxAnchor)
        case "جراد":
            let boxAnchor = try! Experience.loadGrasshopper()
            arView.scene.anchors.append(boxAnchor)
        case "دعسوقة":
            let boxAnchor = try! Experience.loadLeptinotarsa()
            arView.scene.anchors.append(boxAnchor)
        case "الحوت الازرق":
            let boxAnchor = try! Experience.loadBlueWhale()
            arView.scene.anchors.append(boxAnchor)
        case "سمكة":
            let boxAnchor = try! Experience.loadBreamFish()
            arView.scene.anchors.append(boxAnchor)
        case "سمكة الذهبية":
            let boxAnchor = try! Experience.loadGoldenFish()
            arView.scene.anchors.append(boxAnchor)
        case "ثعبان البحر":
            let boxAnchor = try! Experience.loadAmericanEel()
            arView.scene.anchors.append(boxAnchor)
        case "قرش المطرقة":
            let boxAnchor = try! Experience.loadHammerheadShark()
            arView.scene.anchors.append(boxAnchor)
        case "القرش القطي ":
            let boxAnchor = try! Experience.loadAtlanticSturgeon()
            arView.scene.anchors.append(boxAnchor)
        case "سمكة شيطان البحر":
            let boxAnchor = try! Experience.loadMantaRayFeeding()
            arView.scene.anchors.append(boxAnchor)
        case "عصفور":
            let boxAnchor = try! Experience.loadLesserGreyShrike()
            arView.scene.anchors.append(boxAnchor)
        case "سلطعون":
            let boxAnchor = try! Experience.loadCrab()
            arView.scene.anchors.append(boxAnchor)
        case "ضفدع":
            let boxAnchor = try! Experience.loadFrog()
            arView.scene.anchors.append(boxAnchor)
        case "قنديل البحر":
            let boxAnchor = try! Experience.loadJellyFish()
            arView.scene.anchors.append(boxAnchor)
            
        default:
            print("Animal Is Not Found")
        }
    }
    
}

