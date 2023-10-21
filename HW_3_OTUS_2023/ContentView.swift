//
//  ContentView.swift
//  HW_3_OTUS_2023
//
//  Created by Филатов Олег Олегович on 05.10.2023.
//

import SwiftUI
import UI

struct ContentView: View {
    
    @StateObject var viewModel: RentViewModel = .init()
    
    @State var showAlertRent: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading) {
                    Image(viewModel.rentCar.brandAndModelCar)
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .padding(.horizontal)
                    VStack(alignment: .leading) {
                        Text(viewModel.rentCar.brandAndModelCar)
                            .font(.title2)
                        Text("Color: " + viewModel.rentCar.colorCar)
                        Text("Number of car: " + viewModel.rentCar.numberCar)
                        Text("Petrol: " + String(format: "%g", viewModel.rentCar.quantityOfPetrol))
                    }
                    .padding()
                }
                Spacer()
                Button {
                    showAlertRent.toggle()
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 6)
                            .foregroundColor(.orange)
                        HStack {
                            Text("Rent")
                                .foregroundColor(.black)
                        }
                        .padding(16)
                    }
                    .frame(width: 180, height: 45)
                }
            }
            .navigationTitle("Rent car")
            .onAppear {
                viewModel.fetchBrandAndModelCar()
                viewModel.fetchColorCar()
                viewModel.fetchLicencePlateNumber()
                viewModel.fetchQuantityOfPetrol()
            }
            .alert(isPresented: $showAlertRent) { () -> Alert in
                Alert(title: Text("Congratulations"),
                      message: Text(viewModel.rentCar.brandAndModelCar + " is reserved"),
                      dismissButton: .default(Text("Ok!"), action: {
                    viewModel.saveRentCar(car: viewModel.rentCar)
                }))
            }
        }
           

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
