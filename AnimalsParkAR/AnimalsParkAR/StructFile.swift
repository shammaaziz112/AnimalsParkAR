//
//  StructFile.swift
//  AnimalsParkAR
//
//  Created by Hessa on 18/02/1444 AH.
//

import Foundation
import AVFoundation
import RealityKit

struct Animal{
    let name:String
    let description:String
    let image:String
//    let sound:AVAudioPlayer
    let model:Entity
}
//let pathToSound = Bundle.main.path(forResource: "name voice", ofType: "mp3")
//let url = URL(fileURLWithPath: pathToSound)
//let audioPlayer = try AVAudioPlayer(contentsOf: url)


//try! Experience
//let lion = Animal.init(name: "", description: "", image: "", model: try! Experience.loadGoat())

let animalsArray = [Animal.init(name: "الماعز", description: "حيوان اليف يعيش في أعلى الجبال وفي السهول ، يتغذى على الأعشاب ", image: "", model: try! Experience.loadGoat()),
                    Animal.init(name: "نمل", description: "حشرات اجتماعية تعيش في مستعمرات وتعمل بجد للبقاء على قيد الحياة", image: "", model: try! Experience.loadAnt()),
                    Animal.init(name: "خفاش", description: "هو الحيوان الثديي الوحيد الذي يستطيع الطيران. يعيش في الصحاري و  الغابات ويتغذى على الحشرات والزواحف والبرمائيات", image: "", model: try! Experience.loadBat()),
                    Animal.init(name: "نحلة", description: "احد الحشرات تعيش اماكن النباتات و تتغذى على رحيق الازهار ", image: "", model: try! Experience.loadBee()),
                    Animal.init(name: "قط", description: "حيوان اليف يعيش في الصحاري والغابات والمناطق الحضرية و المنازل البشرية ويتغذى على اللحوم", image: "", model: try! Experience.loadCat()),
                    Animal.init(name: "بقرة", description: "تعد من الحيوانات الاليفة ، تعيش في الأراضي العشبية  وتتغذى على النباتات ", image: "", model: try! Experience.loadCow()),
                    Animal.init(name: "كلب بوليسي", description: "حيوان غير اليف ، يساعد الشرطة لان لديه قدرة كبيره على الشم وتميز الروائح المختلفة ، يتغذى على اللحوم", image: "", model: try! Experience.loadDog()),
                    Animal.init(name: "النعامه استرالي", description: "ثاني أكبر طائر في العالم يعيش في قارة أستراليا ويتغذى على اللحوم والنباتات ", image: "", model: try! Experience.loadEmu()),
                    Animal.init(name: "بومة", description: "تعد من الطيور ، تعيش بالقرب من الأشجار وتتغذى على اللحوم", image: "", model: try! Experience.loadOwl()),
                    Animal.init(name: "الخنزير", description: " احد الحيوانات الاليفة يعيش في المزارع ويتغذى على النباتات واللحوم", image: "", model: try! Experience.loadPig()),
                    Animal.init(name: "الدب", description: "حيوان غير اليف ، يعيش في الغابات و يتغذى على اللحوم", image: "", model: try! Experience.loadBear()),
                    Animal.init(name: "الغزال", description: "احد الحيوانات الاليفة يعيش في الصحاري والغابات ويتغذى على الاعشاب ", image: "", model: try! Experience.loadDeer()),
                    Animal.init(name: "البط", description: "تعد من الطيور ، تعيش في البحيرات وتتغذى على النباتات ", image: "", model: try! Experience.loadDuck()),
                    Animal.init(name: "الاسد", description: "ملك الغابة ، احد الحيوانات المفترسة ، يتغذى الأسد على لحوم الحيوانات", image: "", model: try! Experience.loadLion()),
                    Animal.init(name: "الحوت القاتل", description: "يعد من الحيوانات المفترسة التي تعيش في المحيطات وتتغذى على الاسماك", image: "", model: try! Experience.loadOrca()),
                    Animal.init(name: "ذئب", description: "حيوان غير اليف ، يعيش في الصحاري و الغابات ويتغذى على اللحوم", image: "", model: try! Experience.loadWolf()),
                    Animal.init(name: "الجمل", description: "يعرف باسم “سفينة الصحراء” وذلك لأنه قادر على السير وسط رمال الصحراء ويتغذى على النباتات.", image: "", model: try! Experience.loadCamel()),
                    Animal.init(name: "الحصان", description: "احد الحيوانات الاليفة ، نجدها في أي مكان من حولنا وتتغذى على النباتات", image: "", model: try! Experience.loadHorse()),
                    Animal.init(name: "الباندا", description: "يعد حيوان أليف يعيش في الغابات ويتغذى على قصب السكر", image: "", model: try! Experience.loadPanda()),
                    Animal.init(name: "وحيد القرن", description: "يعد من الحيوانات الغير أليفة ، يعيش في الغابات ويتغذى على النباتات", image: "", model: try! Experience.loadRhino()),
                    Animal.init(name: "الافعى", description: "تعد من الزواحف السامة ، تعيش في الصحاري والغابات وتتغذى على اللحوم", image: "", model: try! Experience.loadSnake()),
                    Animal.init(name: "النمر", description: "من الحيوانات المفترسة يعيش في الغابات ويتغذى على اللحوم", image: "", model: try! Experience.loadTiger()),
                    Animal.init(name: "الحمار الوحشي", description: "احد الحيوان الغير اليفة يعيش في الغابات ويتغذى على الاعشاب", image: "", model: try! Experience.loadZebra()),
                    Animal.init(name: "الغوريلا", description: " احد الحيوانات الغير اليفه يعيش في الغابات الاستوائية ويتغذى على النباتات", image: "", model: try! Experience.loadGorill()),
                    Animal.init(name: "الفهد", description: "من الحيوانات المفترسة يعيش في الغابات ويتغذى على اللحوم", image: "", model: try! Experience.loadJaguar()),
                    Animal.init(name: "القرد", description: "حيوان اليف يعيش في الجبال والغابات ويتغذى على النباتات", image: "", model: try! Experience.loadMonkey()),
                    Animal.init(name: "ارنب", description: "حيوان اليف ، يعيش في الحقول وتحت الأشجار والمناطق التي تكثر فيها الأعشاب ، يتغذى على النباتات ", image: "", model: try! Experience.loadRabbit()),
                    Animal.init(name: "السلحفاة", description: "احد الحيوانات  الاليفة ، تعيش في البر والبحر وتتغذى على النباتات", image: "", model: try! Experience.loadTurtle()),
                    Animal.init(name: "الدجاجة", description: "تعد من الطيور تعيش في المناطق الزراعية وتتغذى على الاعلاف", image: "", model: try! Experience.loadChicken()),
                    Animal.init(name: "الدلفين", description: "حيوان اليف ، يعيش في البحار ويتغذى على اللحوم ", image: "", model: try! Experience.loadDolphin()),
                    Animal.init(name: "الزرافة", description: "احد الحيوانات  الاليفة ، تعيش في الغابات وتتغذى على النباتات ", image: "", model: try! Experience.loadGiraffe()),
                    Animal.init(name: "الطاووس", description: " نوع من الطيور يعيش في الغابات الاستوائية ويتغذى على الاعشاب والزواحف", image: "", model: try! Experience.loadPeacock()),
                    Animal.init(name: "البطريق", description: "نوع من الطيور البحرية ، الغير قادرة على الطيران تعيش في الاماكن الباردة وتتغذى على الاسماك", image: "", model: try! Experience.loadPenguin()),
                    Animal.init(name: "الراكون", description: "يعد من الثديات يعيش في الغابات ويتغذى على اللحوم والنباتات", image: "", model: try! Experience.loadRaccoon()),
                    Animal.init(name: "الحرباية", description: "تعد من الزواحف تعيش في الغابات وتتغذى على الحشرات والطيور ", image: "", model: try! Experience.loadReptile()),
                    Animal.init(name: "الفيل", description: "يعد من الثديات يعيش في الغابات ويتغذى على الاعشاب", image: "", model: try! Experience.loadElephant()),
                    Animal.init(name: "الكنغر", description: "حيوان غير اليف ، يعيش في المناطق العشبية ويتغذى على النباتات و اللحوم", image: "", model: try! Experience.loadKangaroo()),
                    Animal.init(name: "الشراع", description: "تعد من الحيوانات المفترسة تعيش في المحيطات وتتغذى على الأسماك", image: "", model: try! Experience.loadSailfish()),
                    Animal.init(name: "الفراشة", description: "حشره رقيقة ، تعيش في الغابات وتتغذى على رحيق الأزهار", image: "", model: try! Experience.loadButterfly()),
                    Animal.init(name: "التمساح", description: "حيوان برمائي يعيش في الماء واليابسة ويتغذى على الحيوانات الصغيرة", image: "", model: try! Experience.loadCrocodile()),
                    Animal.init(name: "السمكة المضيئة", description: "تعد من الحيوانات المفترسة تعيش في اعماق البحر وتتغذى على الأسماك", image: "", model: try! Experience.loadAnglerfish()),
                    Animal.init(name: "الجراد", description: "نوع من الحشرات يعيش في المناطق الزراعية والصحراوية  ويأكل النبات", image: "", model: try! Experience.loadGrasshopper()),
                    Animal.init(name: "الدعسوقة", description: "نوع من الحشرات تعيش في المناطق الزراعية والصحراوية  وتتغذى على اليرقات", image: "", model: try! Experience.loadLeptinotarsa()),
                    Animal.init(name: "الحوت الازرق", description: "حيوان غير اليف ، يعيش في المحيطات يتغذى على اللحوم", image: "", model: try! Experience.loadBlueWhale()),
                    Animal.init(name: "سمكة", description: "احد الحيوانات  الاليفة ، تعيش في البحار وتتغذى على النباتات", image: "", model: try! Experience.loadBreamFish()),
                    Animal.init(name: "سمكة الذهبية", description: " تعيش في البحار و تتغذى على الأعشاب البحرية", image: "", model: try! Experience.loadGoldenFish()),
                    Animal.init(name: "ثعبان البحر", description: "حيوان غير اليف ، يعيش في أعماق المحيطات ويتغذى على اللحوم", image: "", model: try! Experience.loadAmericanEel()),
                    Animal.init(name: "قرش المطرقة", description: "يعد من الحيوانات المفترسة التي تعيش في البحار والمحيطات وتتغذى على الاسماك", image: "", model: try! Experience.loadHammerheadShark()),
                    Animal.init(name: "القرش القطي الاطلسي", description: "يعد من الحيوانات المفترسة يعيش في اعماق البحار والمحيطات ويتغذى على الاسماك ", image: "", model: try! Experience.loadAtlanticSturgeon()),
                    Animal.init(name: "سمكة شيطان البحر", description: "حيوان غير اليف ، يعيش في المحيطات ويتغذى على الأسماك الصغيرة", image: "", model: try! Experience.loadMantaRayFeeding()),
                    Animal.init(name: "العصفور", description: "احد الطيور الصغيره يعيش في الأشجار ويتغذى على البذور ", image: "", model: try! Experience.loadLesserGreyShrike()),
                    Animal.init(name: "السلطعون", description: "كائن بحري يتغذى على الحيوانات والنباتات ", image: "", model: try! Experience.loadCrab()),
                    Animal.init(name: "الضفدع", description: "حيوان برمائي يعيش في الغابات ويتغذى على النباتات والحشرات", image: "", model: try! Experience.loadFrog()),
                    Animal.init(name: "قنديل البحر", description: "", image: "", model: try! Experience.loadJellyFish())]
