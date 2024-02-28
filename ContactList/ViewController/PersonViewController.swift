//
//  PersonViewController.swift
//  ContactList
//
//  Created by Карина Короткая on 28.02.2024.
//

import UIKit

final class PersonViewController: UIViewController {

    @IBOutlet private var phoneLabel: UILabel!
    @IBOutlet private var emailLabel: UILabel!
    
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = contact.fullName
        phoneLabel.text = contact.numberPhone
        emailLabel.text = contact.email
    }
}


