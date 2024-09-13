//
//  ViewController.swift
//  SwiftUnity
//
//  Created by Simon Sestak on 23/08/2024.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let vc = UIHostingController(rootView: ContentView())
        addChild(vc)
        vc.view.frame = self.view.frame
        view.addSubview(vc.view)
        vc.didMove(toParent: self)
    }
}
