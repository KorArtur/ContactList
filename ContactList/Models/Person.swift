

import Foundation

struct Person {
    
    let name: String
    let surname: String
    let email: String
    let numberPhone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    
    static func getPersons() -> [Person] {
        let names = DataStoreService.shared.names.shuffled()
        let surnames = DataStoreService.shared.surnames.shuffled()
        let emails = DataStoreService.shared.emails.shuffled()
        let phones = DataStoreService.shared.numberPhones.shuffled()
        
        var persons: [Person] = []
        
        for i in 0..<names.count {
            persons.append(Person(
                name: names[i],
                surname: surnames[i] ,
                email: emails[i],
                numberPhone: phones[i])
            )
        }
        return persons
    }
}
