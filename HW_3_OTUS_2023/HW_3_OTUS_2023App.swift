//
//  HW_3_OTUS_2023App.swift
//  HW_3_OTUS_2023
//
//  Created by Филатов Олег Олегович on 05.10.2023.
//

import SwiftUI

@main
struct HW_3_OTUS_2023App: App {
    
    init() {
        ServiceLocatorConfiguration.shared.createServices()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
