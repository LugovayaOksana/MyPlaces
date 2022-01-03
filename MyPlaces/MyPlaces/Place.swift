//
//  Place.swift
//  MyPlaces
//
//  Created by Oksana on 30.12.2021.
//

import RealmSwift

class Place: Object {
    @objc dynamic var name = ""
    @objc dynamic var location: String?
    @objc dynamic var type: String?
    @objc dynamic var imageData: Data?
    @objc dynamic var date = Date() // не будет доступно пользователю. Всегда будем инициализировать текущей датой
    // и будем использовать данное значение для сортировки по дате добавления
    @objc dynamic var rating = 0.0
    
    //инициализатор
    convenience init(name: String, location: String?, type: String?, imageDate: Data?, rating: Double) {
        self.init()
        self.name = name
        self.location = location
        self.type = type
        self.imageData = imageDate
        self.rating = rating
    }
    
    /*  До использования Realm
    let restaurantList = ["Bonsai", "Burger Heroes","Kitchen","Love&Life","Morris Pub","Sherlock Holmes", "Speak Easy", "X.O", "Балкан Гриль", "Бочка", "Вкусные истории", "Дастархан", "Индокитай", "Классик", "Шок"]
    
    func savePlaces() {
        for place in restaurantList {
           let image = UIImage(named: place)
            guard let imageData = image?.pngData() else { return }
            let newPlace = Place()
            
            newPlace.name = place
            newPlace.location = "Moscow"
            newPlace.type = "Restaurant"
            newPlace.imageData = imageData

            StorageManager.saveObject(newPlace)
        }
    }*/
    
}


/*  До использования Realm
struct Place {
    var name: String
    var location: String?
    var type: String?
    var image: UIImage?
    var restaurantImage: String?
    
    static let restaurantList = ["Bonsai", "Burger Heroes","Kitchen","Love&Life","Morris Pub","Sherlock Holmes", "Speak Easy", "X.O", "Балкан Гриль", "Бочка", "Вкусные истории", "Дастархан", "Индокитай", "Классик", "Шок"]
    
    static func getPlaces() -> [Place] {
        var places = [Place]()
        for place in restaurantList {
            places.append(Place(name: place, location: "Moscow", type: "Restaurant",image: nil, restaurantImage: place))
        }
        
        return places
    }
}
 */
