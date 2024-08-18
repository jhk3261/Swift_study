import Foundation


struct Cafe:Identifiable {
    let id : Int
    let title: String
    let address: String
    let latitude: Double
    let longitude: Double
    let urlStr:String
}

let cafes = [
    Cafe(id: 1, title: "블루보틀", address: "서울 강남구 테헤란로 129", latitude: 37.5000, longitude: 127.0323, urlStr: "https://www.bluebottlecoffeekorea.com"),
    Cafe(id: 2, title: "스타벅스", address: "서울 강남구 강남대로 390", latitude: 37.5186, longitude: 127.0187, urlStr: "http://www.starbucks.co.kr"),
    Cafe(id: 3, title: "할리스", address: "서울 강남구 강남대로 402", latitude: 37.4987, longitude: 127.0278, urlStr: "http://www.hollys.co.kr"),
    Cafe(id: 4, title: "커피빈", address: "서울 강남구 테헤란로 111", latitude: 37.4987, longitude: 127.0278, urlStr: "http://www.coffeebeankorea.com")
]

struct Coffee: Identifiable {
    let id: Int
    let name: String
    let engName: String
    let price: Int
    let imageName: String
}

let coffees = [
    Coffee(id: 100, name: "아이스 아메리카노", engName: "Iced Caffe Americano", price: 4500, imageName: "iced-americano"),
    Coffee(id: 101,name: "아이스 카페라테", engName: "Iced Caffe Latte", price: 5000, imageName: "iced-caffelatte"),
    Coffee(id: 102,name: "아이스 카푸치노", engName: "Iced Cappuccino", price: 5000, imageName: "iced-cappuccino"),
    Coffee(id: 103,name: "아포가토", engName: "Affogato", price: 7000, imageName: "affogato")
]
