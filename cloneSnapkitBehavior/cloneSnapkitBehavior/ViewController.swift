//
//  ViewController.swift
//  cloneSnapkitBehavior
//
//  Created by Paolo Prodossimo Lopes on 16/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var exampleLabel: UILabel = {
        let label = UILabel()
        label.text = "placehoder"
        label.textColor = .black
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(exampleLabel)
        
        exampleLabel.stylable.applyConstraint { [weak self] view in
            guard let self = self else { return }
            view.top(reference: self.view.safeAreaLayoutGuide.topAnchor)
            view.leading(reference: self.view.safeAreaLayoutGuide.leadingAnchor)
            view.trailing(reference: self.view.safeAreaLayoutGuide.trailingAnchor)
        }
        
    }


}

