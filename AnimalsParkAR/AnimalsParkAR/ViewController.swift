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
    var rr:Entity?
    override func viewDidLoad() {
        super.viewDidLoad()
        rr = try!Experience.loadGoat()
        // Load the "Box" scene from the "Experience" Reality File
//        let boxAnchor = try! Experience.loadBox()
        
        // Add the box anchor to the scene
//        arView.scene.anchors.append(boxAnchor)
    }
}



