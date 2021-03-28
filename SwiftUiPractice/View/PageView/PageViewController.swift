//
//  PageViewController.swift
//  SwiftUiPractice
//
//  Created by Papon Supamongkonchai on 28/3/2564 BE.
//

import SwiftUI
import UIKit

struct PageViewController<Page: View>: UIViewControllerRepresentable {
    var pages: [Page]

    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(
            transitionStyle: .scroll,
            navigationOrientation: .horizontal)
        
        return pageViewController
    }
    
    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
            pageViewController.setViewControllers(
                [UIHostingController(rootView: pages[0])], direction: .forward, animated: true)
    }

}
