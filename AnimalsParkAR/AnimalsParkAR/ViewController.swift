//
//  ViewController.swift
//  AnimalsParkAR
//
//  Created by Hessa on 18/02/1444 AH.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    var animalNameAR:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(animalNameAR)
        switch animalNameAR {
        case "الماعز":
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
        case "كلب بوليسي":
                    let boxAnchor = try! Experience.loadDog()
                    arView.scene.anchors.append(boxAnchor)
        case "النعامه استرالي":
                    let boxAnchor = try! Experience.loadEmu()
                    arView.scene.anchors.append(boxAnchor)
        case "بومة":
                    let boxAnchor = try! Experience.loadOwl()
                    arView.scene.anchors.append(boxAnchor)
        case "الخنزير":
                    let boxAnchor = try! Experience.loadPig()
                    arView.scene.anchors.append(boxAnchor)
        case "الدب":
                    let boxAnchor = try! Experience.loadBear()
                    arView.scene.anchors.append(boxAnchor)
        case "الغزال":
                    let boxAnchor = try! Experience.loadDeer()
                    arView.scene.anchors.append(boxAnchor)
        case "البط":
                    let boxAnchor = try! Experience.loadDuck()
                    arView.scene.anchors.append(boxAnchor)
        case "الاسد":
                    let boxAnchor = try! Experience.loadLion()
                    arView.scene.anchors.append(boxAnchor)
        case "الحوت القاتل":
                    let boxAnchor = try! Experience.loadOrca()
                    arView.scene.anchors.append(boxAnchor)
        case "ذئب":
                    let boxAnchor = try! Experience.loadWolf()
                    arView.scene.anchors.append(boxAnchor)
        case "الجمل":
                    let boxAnchor = try! Experience.loadCamel()
                    arView.scene.anchors.append(boxAnchor)
        case "الحصان":
                    let boxAnchor = try! Experience.loadHorse()
                    arView.scene.anchors.append(boxAnchor)
        case "الباندا":
                    let boxAnchor = try! Experience.loadPanda()
                    arView.scene.anchors.append(boxAnchor)
        case "وحيد القرن":
                    let boxAnchor = try! Experience.loadRhino()
                    arView.scene.anchors.append(boxAnchor)
        case "الافعى":
                    let boxAnchor = try! Experience.loadSnake()
                    arView.scene.anchors.append(boxAnchor)
        case "النمر":
                    let boxAnchor = try! Experience.loadTiger()
                    arView.scene.anchors.append(boxAnchor)
        case "الحمار الوحشي":
                    let boxAnchor = try! Experience.loadZebra()
                    arView.scene.anchors.append(boxAnchor)
        case "الغوريلا":
                    let boxAnchor = try! Experience.loadGorill()
                    arView.scene.anchors.append(boxAnchor)
        case "الفهد":
                    let boxAnchor = try! Experience.loadJaguar()
                    arView.scene.anchors.append(boxAnchor)
        case "القرد":
                    let boxAnchor = try! Experience.loadMonkey()
                    arView.scene.anchors.append(boxAnchor)
        case "ارنب":
                    let boxAnchor = try! Experience.loadRabbit()
                    arView.scene.anchors.append(boxAnchor)
        case "السلحفاة":
                    let boxAnchor = try! Experience.loadTurtle()
                    arView.scene.anchors.append(boxAnchor)
        case "الدجاجة":
                    let boxAnchor = try! Experience.loadChicken()
                    arView.scene.anchors.append(boxAnchor)
        case "الدلفين":
                    let boxAnchor = try! Experience.loadDolphin()
                    arView.scene.anchors.append(boxAnchor)
        case "الزرافة":
                    let boxAnchor = try! Experience.loadGiraffe()
                    arView.scene.anchors.append(boxAnchor)
        case "الطاووس":
                    let boxAnchor = try! Experience.loadPeacock()
                    arView.scene.anchors.append(boxAnchor)
        case "البطريق":
                    let boxAnchor = try! Experience.loadPenguin()
                    arView.scene.anchors.append(boxAnchor)
        case "الراكون":
                    let boxAnchor = try! Experience.loadRaccoon()
                    arView.scene.anchors.append(boxAnchor)
        case "الحرباية":
                    let boxAnchor = try! Experience.loadReptile()
                    arView.scene.anchors.append(boxAnchor)
        case "الفيل":
                    let boxAnchor = try! Experience.loadElephant()
                    arView.scene.anchors.append(boxAnchor)
        case "الكنغر":
                    let boxAnchor = try! Experience.loadKangaroo()
                    arView.scene.anchors.append(boxAnchor)
        case "الشراع":
                    let boxAnchor = try! Experience.loadSailfish()
                    arView.scene.anchors.append(boxAnchor)
        case "الفراشة":
                    let boxAnchor = try! Experience.loadButterfly()
                    arView.scene.anchors.append(boxAnchor)
        case "التمساح":
                    let boxAnchor = try! Experience.loadCrocodile()
                    arView.scene.anchors.append(boxAnchor)
        case "السمكة المضيئة":
                    let boxAnchor = try! Experience.loadAnglerfish()
                    arView.scene.anchors.append(boxAnchor)
        case "الجراد":
                    let boxAnchor = try! Experience.loadGrasshopper()
                    arView.scene.anchors.append(boxAnchor)
        case "الدعسوقة":
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
        case "القرش القطي الاطلسي":
                    let boxAnchor = try! Experience.loadAtlanticSturgeon()
                    arView.scene.anchors.append(boxAnchor)
        case "سمكة شيطان البحر":
                    let boxAnchor = try! Experience.loadMantaRayFeeding()
                    arView.scene.anchors.append(boxAnchor)
        case "العصفور":
                    let boxAnchor = try! Experience.loadLesserGreyShrike()
                    arView.scene.anchors.append(boxAnchor)
        case "السلطعون":
                    let boxAnchor = try! Experience.loadCrab()
                    arView.scene.anchors.append(boxAnchor)
        case "الضفدع":
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
