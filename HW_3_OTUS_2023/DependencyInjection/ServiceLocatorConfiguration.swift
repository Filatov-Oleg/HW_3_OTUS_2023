//
//  ServiceLocatorConfiguration.swift
//  HW_3_OTUS_2023
//
//  Created by Филатов Олег Олегович on 21.10.2023.
//

import Foundation
import NetworkService
import UserDefaultService

public final class ServiceLocatorConfiguration {

    static let shared = ServiceLocatorConfiguration()

    func createServices() {
        ServiceLoactor.shared.addService(NetworkService())
        ServiceLoactor.shared.addService(UserDefaultService())
    }
}
