//
//  CheckoutVIew.swift
//  IDine
//
//  Created by Expert on 03/08/2022.
//

import SwiftUI

struct CheckoutView: View {
    
    @State private var paymentType: PaymentTypes = .Credit
    @State private var addloyalityDetail = false
    @State private var loyalityNumber = ""
    @State private var showingPaymentAlert = false
    
    @EnvironmentObject var order: Order
    
    @StateObject private var checkoutViewViewModel: CheckoutViewViewModel
    
    init() {
        _checkoutViewViewModel = StateObject(wrappedValue: CheckoutViewViewModel())
    }
    
    
//    var totalPrice: String {
//        let formatter = NumberFormatter()
//        formatter.numberStyle = .currency
//        let total = Double(order.total)
//        return formatter.string(from: NSNumber(value: total)) ?? "$0"
//    }
    
    var body: some View {
        Form {
            Section {
                
                Picker("How to want to pay", selection: $paymentType) {
                    ForEach(PaymentTypes.allCases, id: \.self) {
                        Text($0.localizedName)
                        .tag($0)
                    }
                }
            }
            
            Toggle("$addloyalityDetail", isOn: $addloyalityDetail.animation())
            
            TextField("loyalityNumber", text: $loyalityNumber)
            
            Section(header: Text("\(checkoutViewViewModel.calcTotalPrice(order: order))").font(.largeTitle)) {
                Button(action: Confirm) {
                    Label("Confirm order", systemImage: "lock.square")
                }
            }.alert("Your order is Done. please wait it after two days", isPresented: $showingPaymentAlert, actions: {})
            
        }.navigationTitle("Check out")
            .navigationBarTitleDisplayMode(.inline)
    }
    
    
    
    private func Confirm() {
        showingPaymentAlert.toggle()
    }
}

struct CheckoutVIew_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CheckoutView().environmentObject(Order())
        }
        
    }
}
