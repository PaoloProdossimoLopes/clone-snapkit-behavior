//
//  ObjectLayoutAplayer.swift
//  cloneSnapkitBehavior
//
//  Created by Paolo Prodossimo Lopes on 16/02/22.
//

import UIKit

final class ObjectLayoutAplayer {
    
    private let support: UIView
    
    init(_ support: UIView) {
        self.support = support
        self.support.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func applyConstraint(_ callback: (ConstraintableLayout) -> ()) {
        let object: ConstraintableLayout = .init(support)
        callback(object)
    }
    
}

final class ConstraintableLayout {
    
    private let support: UIView
    
    init(_ support: UIView) {
        self.support = support
    }
    
    func top(reference: NSLayoutYAxisAnchor?, spacing: CGFloat = 0) {
        if let ref = reference {
            support.topAnchor.constraint(equalTo: ref, constant: spacing).isActive = true
        }
    }
    
    func leading(reference: NSLayoutXAxisAnchor?, spacing: CGFloat = 0) {
        if let ref = reference {
            support.leadingAnchor.constraint(equalTo: ref, constant: spacing).isActive = true
        }
    }
    
    func trailing(reference: NSLayoutXAxisAnchor?, spacing: CGFloat = 0) {
        if let ref = reference {
            support.trailingAnchor.constraint(equalTo: ref, constant: spacing).isActive = true
        }
    }
    
    func bottom(reference: NSLayoutYAxisAnchor?, spacing: CGFloat = 0) {
        if let ref = reference {
            support.bottomAnchor.constraint(equalTo: ref, constant: spacing).isActive = true
        }
    }
    
    func centerX(reference: NSLayoutXAxisAnchor?, spacing: CGFloat = 0) {
        if let ref = reference {
            support.centerXAnchor.constraint(equalTo: ref, constant: spacing).isActive = true
        }
    }
    
    func centerY(reference: NSLayoutYAxisAnchor?, spacing: CGFloat = 0) {
        if let ref = reference {
            support.centerYAnchor.constraint(equalTo: ref, constant: spacing).isActive = true
        }
    }
    
}
