

import UIKit

final class ContactListViewController: UITableViewController {
    
    private let contacts = Person.getPersons()
    
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        var config = cell.defaultContentConfiguration()
        let person = contacts[indexPath.row]
        
        config.text = person.fullName
        cell.contentConfiguration = config
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let personVC = segue.destination as? PersonViewController,
           let indexPath = tableView.indexPathForSelectedRow {
            personVC.contact = contacts[indexPath.row]
        }
    }
}

