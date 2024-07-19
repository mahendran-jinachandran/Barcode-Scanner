//
//  ScannerView.swift
//  Barcode-Scanner
//
//  Created by mahendran-14703 on 19/07/24.
//

import SwiftUI

struct ScannerView: UIViewControllerRepresentable {
    
    @Binding var barCode: String
    
    func makeCoordinator() -> Coordinator {
        Coordinator(scannerView: self)
    }
    
    func makeUIViewController(context: Context) -> ScannerVC {
        ScannerVC(scannerDelegate: context.coordinator)
    }
    
    func updateUIViewController(_ uiViewController: ScannerVC, context: Context){}
    
    final class Coordinator: NSObject, ScannerVCDelegate {
        
        private let scannerView: ScannerView
        
        init(scannerView: ScannerView) {
            self.scannerView = scannerView
        }
        
        func didFind(barcode: String) {
            scannerView.barCode = barcode
            print("BARCODE: \(barcode)")
        }
    }
}

#Preview {
    ScannerView(barCode: .constant("123123"))
}
