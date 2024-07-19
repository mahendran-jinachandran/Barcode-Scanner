//
//  ContentView.swift
//  Barcode-Scanner
//
//  Created by mahendran-14703 on 19/07/24.
//

import SwiftUI

struct BarcodeScannerView: View {
    
   @State var barCode: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                ScannerView(barCode: $barCode)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                
                Spacer().frame(height: 60)
                
                Label(barCode.isEmpty ? "Scanned Barcode" : barCode, systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text("Not yet scanned")
                    .bold()
                    .font(.largeTitle)
                    .foregroundStyle(barCode.isEmpty ? .red : .green)
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
        }
    }
}

#Preview {
    BarcodeScannerView()
}
 
 
