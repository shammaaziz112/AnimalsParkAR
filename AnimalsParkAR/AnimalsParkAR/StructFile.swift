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
    let sound:String
    let category:String
}

var animalsArray = [Animal.init(name: "الماعز", description: "حيوان اليف يعيش في أعلى الجبال وفي السهول ، يتغذى على الأعشاب ", image: "gota", sound: "gotaod", category: "1"),
                    Animal.init(name: "نمل", description: "حشرات اجتماعية تعيش في مستعمرات وتعمل بجد للبقاء على قيد الحياة", image: "ant", sound: "antod", category: "4"),
                    Animal.init(name: "خفاش", description: "هو الحيوان الثديي الوحيد الذي يستطيع الطيران. يعيش في الصحاري و  الغابات ويتغذى على الحشرات والزواحف والبرمائيات", image: "bat", sound: "batod", category: "1"),
                    Animal.init(name: "نحلة", description: "احد الحشرات تعيش اماكن النباتات و تتغذى على رحيق الازهار ", image: "Bees", sound: "Beesod", category: "4"),
                    Animal.init(name: "قط", description: "حيوان اليف يعيش في الصحاري والغابات والمناطق الحضرية و المنازل البشرية ويتغذى على اللحوم", image: "cat", sound: "catod", category: "1"),
                    Animal.init(name: "بقرة", description: "تعد من الحيوانات الاليفة ، تعيش في الأراضي العشبية  وتتغذى على النباتات ", image: "Cow", sound: "Cowod", category: "1"),
                    Animal.init(name: "كلب بوليسي", description: "حيوان غير اليف ، يساعد الشرطة لان لديه قدرة كبيره على الشم وتميز الروائح المختلفة ، يتغذى على اللحوم", image: "dog", sound: "dogod", category: "1"),
                    Animal.init(name: "النعامه استرالي", description: "ثاني أكبر طائر في العالم يعيش في قارة أستراليا ويتغذى على اللحوم والنباتات ", image: "ostrich", sound: "ostrichod", category: "1"),
                    Animal.init(name: "بومة", description: "تعد من الطيور ، تعيش بالقرب من الأشجار وتتغذى على اللحوم", image: "owl", sound: "owlod", category: "1"),
                    Animal.init(name: "الخنزير", description: " احد الحيوانات الاليفة يعيش في المزارع ويتغذى على النباتات واللحوم", image: "pig", sound: "pigod", category:"1"),
                    Animal.init(name: "الدب", description: "حيوان غير اليف ، يعيش في الغابات و يتغذى على اللحوم", image: "bear", sound: "beardod", category: "1"),
                    Animal.init(name: "الغزال", description: "احد الحيوانات الاليفة يعيش في الصحاري والغابات ويتغذى على الاعشاب ", image: "gazelle", sound: "gazelleod", category: "1"),
                    Animal.init(name: "البط", description: "تعد من الطيور ، تعيش في البحيرات وتتغذى على النباتات ", image: "duck", sound: "duckod", category: "1"),
                    Animal.init(name: "الاسد", description: "ملك الغابة ، احد الحيوانات المفترسة ، يتغذى الأسد على لحوم الحيوانات", image: "Lion", sound: "lionod", category: "1"),
                    Animal.init(name: "الحوت القاتل", description: "يعد من الحيوانات المفترسة التي تعيش في المحيطات وتتغذى على الاسماك", image: "killerwhale", sound: "killerwhaleod", category: "2"),
                    Animal.init(name: "ذئب", description: "حيوان غير اليف ، يعيش في الصحاري و الغابات ويتغذى على اللحوم", image: "wolf", sound: "wolfod", category: "1" ),
                    Animal.init(name: "الجمل", description: "يعرف باسم “سفينة الصحراء” وذلك لأنه قادر على السير وسط رمال الصحراء ويتغذى على النباتات.", image: "camel", sound: "Camelod", category: "1"),
                    Animal.init(name: "الحصان", description: "احد الحيوانات الاليفة ، نجدها في أي مكان من حولنا وتتغذى على النباتات", image: "horse", sound: "horseod", category: "1"),
                    Animal.init(name: "الباندا", description: "يعد حيوان أليف يعيش في الغابات ويتغذى على قصب السكر", image: "panda", sound: "pandaod", category: "1"),
                    Animal.init(name: "وحيد القرن", description: "يعد من الحيوانات الغير أليفة ، يعيش في الغابات ويتغذى على النباتات", image: "rhino", sound: "rhinood", category: "1"),
                    Animal.init(name: "الافعى", description: "تعد من الزواحف السامة ، تعيش في الصحاري والغابات وتتغذى على اللحوم", image: "snake", sound: "snakeod", category: "1"),
                    Animal.init(name: "النمر", description: "من الحيوانات المفترسة يعيش في الغابات ويتغذى على اللحوم", image: "Tiger", sound: "Tigerod", category: "1"),
                    Animal.init(name: "الحمار الوحشي", description: "احد الحيوان الغير اليفة يعيش في الغابات ويتغذى على الاعشاب", image: "Zebra", sound: "zebraod", category: "1"),
                    Animal.init(name: "الغوريلا", description: " احد الحيوانات الغير اليفه يعيش في الغابات الاستوائية ويتغذى على النباتات", image: "gorilla", sound: "gorillaod", category: "1"),
                    Animal.init(name: "الفهد", description: "من الحيوانات المفترسة يعيش في الغابات ويتغذى على اللحوم", image: "cheetah", sound: "Cheetahod", category: "1"),
                    Animal.init(name: "القرد", description: "حيوان اليف يعيش في الجبال والغابات ويتغذى على النباتات", image: "Monkey", sound: "Monkeyod", category: "1"),
                    Animal.init(name: "ارنب", description: "حيوان اليف ، يعيش في الحقول وتحت الأشجار والمناطق التي تكثر فيها الأعشاب ، يتغذى على النباتات ", image: "rabbit", sound: "rabbitod", category: "1"),
                    Animal.init(name: "السلحفاة", description: "احد الحيوانات  الاليفة ، تعيش في البر والبحر وتتغذى على النباتات", image: "Turtle", sound: "turtleod", category: "3"),
                    Animal.init(name: "الدجاجة", description: "تعد من الطيور تعيش في المناطق الزراعية وتتغذى على الاعلاف", image: "chicken", sound: "chickenod", category: "1"),
                    Animal.init(name: "الدلفين", description: "حيوان اليف ، يعيش في البحار ويتغذى على اللحوم ", image: "Dolphin", sound: "dolphinod", category: "2"),
                    Animal.init(name: "الزرافة", description: "احد الحيوانات  الاليفة ، تعيش في الغابات وتتغذى على النباتات ", image: "giraffe", sound: "giraffeod", category: "1"),
                    Animal.init(name: "الطاووس", description: " نوع من الطيور يعيش في الغابات الاستوائية ويتغذى على الاعشاب والزواحف", image: "peacock", sound: "peacockod", category: "1"),
                    Animal.init(name: "البطريق", description: "نوع من الطيور البحرية ، الغير قادرة على الطيران تعيش في الاماكن الباردة وتتغذى على الاسماك", image: "penguin", sound: "penguinod", category: "2"),
                    Animal.init(name: "الراكون", description: "يعد من الثديات يعيش في الغابات ويتغذى على اللحوم والنباتات", image: "raccoon", sound: "raccoonod", category: "1"),
                    Animal.init(name: "الحرباية", description: "تعد من الزواحف تعيش في الغابات وتتغذى على الحشرات والطيور ", image: "chameleon", sound: "chameleonod", category: "1"),
                    Animal.init(name: "الفيل", description: "يعد من الثديات يعيش في الغابات ويتغذى على الاعشاب", image: "Elephant", sound: "elephantod", category: "1"),
                    Animal.init(name: "الكنغر", description: "حيوان غير اليف ، يعيش في المناطق العشبية ويتغذى على النباتات و اللحوم", image: "Kangaroo", sound: "kangarrod", category: "1"),
                    Animal.init(name: "الشراع", description: "تعد من الحيوانات المفترسة تعيش في المحيطات وتتغذى على الأسماك", image: "billfish", sound: "sailfishod", category: "2"),
                    Animal.init(name: "الفراشة", description: "حشره رقيقة ، تعيش في الغابات وتتغذى على رحيق الأزهار", image: "butterfly", sound: "butterflyod", category: "4"),
                    Animal.init(name: "التمساح", description: "حيوان برمائي يعيش في الماء واليابسة ويتغذى على الحيوانات الصغيرة", image: "crocodile", sound: "crocodileod", category: "3"),
                    Animal.init(name: "السمكة المضيئة", description: "تعد من الحيوانات المفترسة تعيش في اعماق البحر وتتغذى على الأسماك", image: "Light Fish", sound: "lightfishod", category: "2"),
                    Animal.init(name: "الجراد", description: "نوع من الحشرات يعيش في المناطق الزراعية والصحراوية  ويأكل النبات", image: "locust", sound: "locustod", category: "4"),
                    Animal.init(name: "الدعسوقة", description: "نوع من الحشرات تعيش في المناطق الزراعية والصحراوية  وتتغذى على اليرقات", image: "ladybug", sound: "ladybugod", category: "4"),
                    Animal.init(name: "الحوت الازرق", description: "حيوان غير اليف ، يعيش في المحيطات يتغذى على اللحوم", image: "bluewhale", sound: "bluewhaleod", category: "2"),
                    Animal.init(name: "سمكة", description: "احد الحيوانات  الاليفة ، تعيش في البحار وتتغذى على النباتات", image: "fish", sound: "fishod", category: "2"),
                    Animal.init(name: "سمكة الذهبية", description: " تعيش في البحار و تتغذى على الأعشاب البحرية", image: "GoldFish", sound: "goldfishod", category: "2"),
                    Animal.init(name: "ثعبان البحر", description: "حيوان غير اليف ، يعيش في أعماق المحيطات ويتغذى على اللحوم", image: "eel", sound: "Eelod", category: "2"),
                    Animal.init(name: "قرش المطرقة", description: "يعد من الحيوانات المفترسة التي تعيش في البحار والمحيطات وتتغذى على الاسماك", image: "hammerheadshark", sound: "hammerheadsharkod", category: "2"),
                    Animal.init(name: "القرش القطي الاطلسي", description: "يعد من الحيوانات المفترسة يعيش في اعماق البحار والمحيطات ويتغذى على الاسماك ", image: "catshark", sound: "catsharkod", category: "2"),
                    Animal.init(name: "سمكة شيطان البحر", description: "حيوان غير اليف ، يعيش في المحيطات ويتغذى على الأسماك الصغيرة", image: "Manta alfredi", sound: "mobulamobularod", category: "2"),
                    Animal.init(name: "العصفور", description: "احد الطيور الصغيره يعيش في الأشجار ويتغذى على البذور ", image: "bird", sound: "birdod", category: "1"),
                    Animal.init(name: "السلطعون", description: "كائن بحري يتغذى على الحيوانات والنباتات", image: "crab", sound: "crabod", category: "2"),
                    Animal.init(name: "الضفدع", description: "حيوان برمائي يعيش في الغابات ويتغذى على النباتات والحشرات", image: "frog", sound: "frogod", category: "3"),
                    Animal.init(name: "قنديل البحر", description: "حيوان غير اليف ، يعيش في البحار ويتغذى على يرقات الأسماك", image: "jellyFish", sound: "jellyfishod", category: "3")]
