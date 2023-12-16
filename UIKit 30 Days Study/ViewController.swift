//
//  ViewController.swift
//  UIKit 30 Days Study
//
//  Created by Mac on 12/15/23.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let firstLabel = UILabel()
        
        firstLabel.text = "유킷유캔두잇"
        
        view.addSubview(firstLabel)
        
        let safeArea = view.safeAreaLayoutGuide
        let leadingConstraint = firstLabel.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 16)
        
        firstLabel.translatesAutoresizingMaskIntoConstraints = false
        
        leadingConstraint.isActive = true
    }
}

struct ViewControllerRepresentable: UIViewControllerRepresentable {
    typealias UIViewControllerType = ViewController
    
    func makeUIViewController(context: Context) -> ViewController {
        return ViewController()
    }
    
    func updateUIViewController(_ uiViewController: ViewController, context: Context) {
    }
}

@available(iOS 13.0.0, *)
struct ViewPreview: PreviewProvider {
    static var previews: some View {
        ViewControllerRepresentable()
    }
}
