
import Foundation


struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}
enum ResponseType {
    case single, multiple, ranged
}

struct Answer{
        var text: String
        var type: AnimalType
    }

enum AnimalType : Character {
        
        case dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"
    
    
    var definition: String {
            switch self{
                case .dog:
                return "you are incredibly outgoing. you surround yourself with the people you love and enjoy activities with your friends"
                case .cat:
                return "mischievous, yet mild=tempered, you enjoy doing things on your own "
                case .rabbit:
                return "you love everything thats soft. you are healthy and full of energy"
                case .turtle:
                return "you are wise beyone your years, and you focus on the details. slow and stedy wins the race "
        }
    }
    }
    

