//
//  SaidflixApp.swift
//  Saidflix
//
//  Created by Muhammed Said BASMACI on 17.04.2024.
//

import SwiftUI
import SwiftfulRouting

@main
struct SaidflixApp: App {
    var body: some Scene {
        WindowGroup {
            RouterView { _ in
                ContentView()
            }
        }
    }
}

extension UINavigationController: UIGestureRecognizerDelegate {
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }
    
    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}
