//
//  ViewModel.swift
//  HW_3_OTUS_2023
//
//  Created by Филатов Олег Олегович on 21.10.2023.
//

import Foundation
import NetworkService
import UserDefaultService

class RentViewModel: ObservableObject {
    
    @InjectedWrapper var networkService: NetworkService?
    @InjectedWrapper var userDefaultsService: UserDefaultService?

    @Published var rentCar: RentCarModel = .init()
    @Published var countOfRentCar: Int = 0
    @Published var rentCars: [RentCarModel] = []
    
    // MARK: NetworkService
    
    func fetchBrandAndModelCar() {
        rentCar.brandAndModelCar = networkService?.getBrandAndModelCar() ?? "Not car"
    }
    
    func fetchColorCar() {
        rentCar.colorCar = networkService?.getColorCar() ?? "Not color"
    }
    
    func fetchLicencePlateNumber() {
        rentCar.numberCar = networkService?.getLicencePlateNumber() ?? "Not number"
    }
    
    func fetchQuantityOfPetrol() {
        rentCar.quantityOfPetrol = networkService?.getQuantityOfPetrol() ?? 0.0
    }
    
    // MARK: UserDefaultService
    
    func saveRentCar(car: RentCarModel) {
        userDefaultsService?.save(car: car)
    }
    

}
