//
//  RentCarModel.swift
//  HW_3_OTUS_2023
//
//  Created by Филатов Олег Олегович on 21.10.2023.
//

import Foundation

public struct RentCarModel: Identifiable, Codable {
    public var id = UUID()
    public var brandAndModelCar: String = "car"
    public var colorCar: String = ""
    public var numberCar: String = ""
    public var quantityOfPetrol: Double = 0.0
}
