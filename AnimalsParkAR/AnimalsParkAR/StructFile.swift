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

var animalsArray = [Animal.init(name: "الماعز", description: "حيوان اليف يعيش في أعلى الجبال وفي السهول ، يتغذى على الأعشاب ", image: "gota", sound: "gotaod", category: "برية"),
                    Animal.init(name: "نمل", description: "حشرات اجتماعية تعيش في مستعمرات وتعمل بجد للبقاء على قيد الحياة", image: "ant", sound: "antod", category: "الحشرات"),
                    Animal.init(name: "خفاش", description: "هو الحيوان الثديي الوحيد الذي يستطيع الطيران. يعيش في الصحاري و  الغابات ويتغذى على الحشرات والزواحف والبرمائيات", image: "bat", sound: "batod", category: "برية"),
                    Animal.init(name: "نحلة", description: "احد الحشرات تعيش اماكن النباتات و تتغذى على رحيق الازهار ", image: "Bees", sound: "Beesod", category: "الحشرات"),
                    Animal.init(name: "قط", description: "حيوان اليف يعيش في الصحاري والغابات والمناطق الحضرية و المنازل البشرية ويتغذى على اللحوم", image: "cat", sound: "catod", category: "برية"),
                    Animal.init(name: "بقرة", description: "تعد من الحيوانات الاليفة ، تعيش في الأراضي العشبية  وتتغذى على النباتات ", image: "Cow", sound: "Cowod", category: "برية"),
                    Animal.init(name: "كلب بوليسي", description: "حيوان غير اليف ، يساعد الشرطة لان لديه قدرة كبيره على الشم وتميز الروائح المختلفة ، يتغذى على اللحوم", image: "dog", sound: "dogod", category: "البرية"),
                    Animal.init(name: "النعامه استرالي", description: "ثاني أكبر طائر في العالم يعيش في قارة أستراليا ويتغذى على اللحوم والنباتات ", image: "ostrich", sound: "ostrichod", category: "برية"),
                    Animal.init(name: "بومة", description: "تعد من الطيور ، تعيش بالقرب من الأشجار وتتغذى على اللحوم", image: "owl", sound: "owlod", category: "برية"),
                    Animal.init(name: "الخنزير", description: " احد الحيوانات الاليفة يعيش في المزارع ويتغذى على النباتات واللحوم", image: "pig", sound: "pigod", category: "برية"),
                    Animal.init(name: "الدب", description: "حيوان غير اليف ، يعيش في الغابات و يتغذى على اللحوم", image: "bear", sound: "beardod", category: "برية"),
                    Animal.init(name: "الغزال", description: "احد الحيوانات الاليفة يعيش في الصحاري والغابات ويتغذى على الاعشاب ", image: "gazelle", sound: "gazelleod", category: "برية"),
                    Animal.init(name: "البط", description: "تعد من الطيور ، تعيش في البحيرات وتتغذى على النباتات ", image: "duck", sound: "duckod", category: "برية"),
                    Animal.init(name: "الاسد", description: "ملك الغابة ، احد الحيوانات المفترسة ، يتغذى الأسد على لحوم الحيوانات", image: "Lion", sound: "lionod", category: "برية"),
                    Animal.init(name: "الحوت القاتل", description: "يعد من الحيوانات المفترسة التي تعيش في المحيطات وتتغذى على الاسماك", image: "killerwhale", sound: "killerwhaleod", category: "بحرية"),
                    Animal.init(name: "ذئب", description: "حيوان غير اليف ، يعيش في الصحاري و الغابات ويتغذى على اللحوم", image: "wolf", sound: "wolfod", category: "برية"),
                    Animal.init(name: "الجمل", description: "يعرف باسم “سفينة الصحراء” وذلك لأنه قادر على السير وسط رمال الصحراء ويتغذى على النباتات.", image: "camel", sound: "Camelod", category: "برية"),
                    Animal.init(name: "الحصان", description: "احد الحيوانات الاليفة ، نجدها في أي مكان من حولنا وتتغذى على النباتات", image: "horse", sound: "horseod", category: "برية"),
                    Animal.init(name: "الباندا", description: "يعد حيوان أليف يعيش في الغابات ويتغذى على قصب السكر", image: "panda", sound: "pandaod", category: "برية"),
                    Animal.init(name: "وحيد القرن", description: "يعد من الحيوانات الغير أليفة ، يعيش في الغابات ويتغذى على النباتات", image: "rhino", sound: "rhinood", category: "برية"),
                    Animal.init(name: "الافعى", description: "تعد من الزواحف السامة ، تعيش في الصحاري والغابات وتتغذى على اللحوم", image: "snake", sound: "snakeod", category: "برية"),
                    Animal.init(name: "النمر", description: "من الحيوانات المفترسة يعيش في الغابات ويتغذى على اللحوم", image: "Tiger", sound: "Tigerod", category: "برية"),
                    Animal.init(name: "الحمار الوحشي", description: "احد الحيوان الغير اليفة يعيش في الغابات ويتغذى على الاعشاب", image: "Zebra", sound: "zebraod", category: "برية"),
                    Animal.init(name: "الغوريلا", description: " احد الحيوانات الغير اليفه يعيش في الغابات الاستوائية ويتغذى على النباتات", image: "gorilla", sound: "gorillaod", category: "برية"),
                    Animal.init(name: "الفهد", description: "من الحيوانات المفترسة يعيش في الغابات ويتغذى على اللحوم", image: "cheetah", sound: "Cheetahod", category: "برية"),
                    Animal.init(name: "القرد", description: "حيوان اليف يعيش في الجبال والغابات ويتغذى على النباتات", image: "Monkey", sound: "Monkeyod", category: "برية"),
                    Animal.init(name: "ارنب", description: "حيوان اليف ، يعيش في الحقول وتحت الأشجار والمناطق التي تكثر فيها الأعشاب ، يتغذى على النباتات ", image: "rabbit", sound: "rabbitod", category: "برية"),
                    Animal.init(name: "السلحفاة", description: "احد الحيوانات  الاليفة ، تعيش في البر والبحر وتتغذى على النباتات", image: "Turtle", sound: "turtleod", category: "برمائية"),
                    Animal.init(name: "الدجاجة", description: "تعد من الطيور تعيش في المناطق الزراعية وتتغذى على الاعلاف", image: "chicken", sound: "chickenod", category: "برية"),
                    Animal.init(name: "الدلفين", description: "حيوان اليف ، يعيش في البحار ويتغذى على اللحوم ", image: "Dolphin", sound: "dolphinod", category: "بحرية"),
                    Animal.init(name: "الزرافة", description: "احد الحيوانات  الاليفة ، تعيش في الغابات وتتغذى على النباتات ", image: "giraffe", sound: "giraffeod", category: "برية"),
                    Animal.init(name: "الطاووس", description: " نوع من الطيور يعيش في الغابات الاستوائية ويتغذى على الاعشاب والزواحف", image: "peacock", sound: "peacockod", category: "برية"),
                    Animal.init(name: "البطريق", description: "نوع من الطيور البحرية ، الغير قادرة على الطيران تعيش في الاماكن الباردة وتتغذى على الاسماك", image: "penguin", sound: "penguinod", category: "بحرية"),
                    Animal.init(name: "الراكون", description: "يعد من الثديات يعيش في الغابات ويتغذى على اللحوم والنباتات", image: "raccoon", sound: "raccoonod", category: "برية"),
                    Animal.init(name: "الحرباية", description: "تعد من الزواحف تعيش في الغابات وتتغذى على الحشرات والطيور ", image: "chameleon", sound: "chameleonod", category: "برية"),
                    Animal.init(name: "الفيل", description: "يعد من الثديات يعيش في الغابات ويتغذى على الاعشاب", image: "Elephant", sound: "elephantod", category: "برية"),
                    Animal.init(name: "الكنغر", description: "حيوان غير اليف ، يعيش في المناطق العشبية ويتغذى على النباتات و اللحوم", image: "Kangaroo", sound: "kangarrod", category: "برية"),
                    Animal.init(name: "الشراع", description: "تعد من الحيوانات المفترسة تعيش في المحيطات وتتغذى على الأسماك", image: "billfish", sound: "sailfishod", category: "بحرية"),
                    Animal.init(name: "الفراشة", description: "حشره رقيقة ، تعيش في الغابات وتتغذى على رحيق الأزهار", image: "butterfly", sound: "butterflyod", category: "حشرات"),
                    Animal.init(name: "التمساح", description: "حيوان برمائي يعيش في الماء واليابسة ويتغذى على الحيوانات الصغيرة", image: "crocodile", sound: "crocodileod", category: "برمائية"),
                    Animal.init(name: "السمكة المضيئة", description: "تعد من الحيوانات المفترسة تعيش في اعماق البحر وتتغذى على الأسماك", image: "Light Fish", sound: "lightfishod", category: "بحرية"),
                    Animal.init(name: "الجراد", description: "نوع من الحشرات يعيش في المناطق الزراعية والصحراوية  ويأكل النبات", image: "locust", sound: "locustod", category: "حشرات"),
                    Animal.init(name: "الدعسوقة", description: "نوع من الحشرات تعيش في المناطق الزراعية والصحراوية  وتتغذى على اليرقات", image: "ladybug", sound: "ladybugod", category: "حشرات"),
                    Animal.init(name: "الحوت الازرق", description: "حيوان غير اليف ، يعيش في المحيطات يتغذى على اللحوم", image: "bluewhale", sound: "bluewhaleod", category: "بحرية"),
                    Animal.init(name: "سمكة", description: "احد الحيوانات  الاليفة ، تعيش في البحار وتتغذى على النباتات", image: "fish", sound: "fishod", category: "بحرية"),
                    Animal.init(name: "سمكة الذهبية", description: " تعيش في البحار و تتغذى على الأعشاب البحرية", image: "GoldFish", sound: "goldfishod", category: "بحرية"),
                    Animal.init(name: "ثعبان البحر", description: "حيوان غير اليف ، يعيش في أعماق المحيطات ويتغذى على اللحوم", image: "eel", sound: "Eelod", category: "بحرية"),
                    Animal.init(name: "قرش المطرقة", description: "يعد من الحيوانات المفترسة التي تعيش في البحار والمحيطات وتتغذى على الاسماك", image: "hammerheadshark", sound: "hammerheadsharkod", category: "بحرية"),
                    Animal.init(name: "القرش القطي الاطلسي", description: "يعد من الحيوانات المفترسة يعيش في اعماق البحار والمحيطات ويتغذى على الاسماك ", image: "catshark", sound: "catsharkod", category: "بحرية"),
                    Animal.init(name: "سمكة شيطان البحر", description: "حيوان غير اليف ، يعيش في المحيطات ويتغذى على الأسماك الصغيرة", image: "Manta alfredi", sound: "mobulamobularod", category: "بحرية"),
                    Animal.init(name: "العصفور", description: "احد الطيور الصغيره يعيش في الأشجار ويتغذى على البذور ", image: "bird", sound: "birdod", category: "برية"),
                    Animal.init(name: "السلطعون", description: "كائن بحري يتغذى على الحيوانات والنباتات", image: "crab", sound: "crabod", category: "بحرية"),
                    Animal.init(name: "الضفدع", description: "حيوان برمائي يعيش في الغابات ويتغذى على النباتات والحشرات", image: "frog", sound: "frogod", category: "برمائية"),
                    Animal.init(name: "قنديل البحر", description: "حيوان غير اليف ، يعيش في البحار ويتغذى على يرقات الأسماك", image: "jellyFish", sound: "jellyfishod", category: "برمائية")]
