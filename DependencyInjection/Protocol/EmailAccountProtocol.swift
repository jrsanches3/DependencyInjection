//
//  EmailAccountProtocol.swift
//  DependencyInjection
//
//  Created by Adilson Junior on 27/09/21.
//

import UIKit

protocol EmailAccount {
    var username: String { get }
    var domain: String { get }
    var lastEmailReceived: Date { get }
}
