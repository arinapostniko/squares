//
//  ViewController.swift
//  squares
//
//  Created by Arina Postnikova on 25.09.22.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    // MARK: - Private properties
    
    private var isFirstLoad = true
    
    // MARK: - Override methods
    
    override func viewDidLayoutSubviews() {
        if isFirstLoad {
            initListener(view: self.view)
            isFirstLoad = false
        }
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white

    }
    
    // MARK: - Private methods
    
    private func initListener(view: UIView){
        let gesture = UITapGestureRecognizer(
            target: self,
            action: #selector(gestureRecognizer(_:))
        )
        view.addGestureRecognizer(gesture)
    }
    
    private func addSquare(on view: UIView) {
        print("Tap!")
        
        let square = UIView()
        square.backgroundColor = .randomColor
        view.addSubview(square)
        
        let maxSize = min(view.frame.height, view.frame.width)
        
        let randomSize = CGFloat.randomSize(maxSize: maxSize)
        let randomCoordinates = CGFloat.getRandomCoordinates(
            maxX: view.frame.width - randomSize,
            maxY: view.frame.height - randomSize
        )
        
        square.snp.makeConstraints { make in
            make.height
                .width
                .equalTo(randomSize)
            make.top
                .equalTo(randomCoordinates.0)
            make.leading
                .equalTo(randomCoordinates.1)
        }
        
        initListener(view: square)
        
    }
    
    @objc private func gestureRecognizer(_ sender: UITapGestureRecognizer) {
        guard let currentView = sender.view else { return }
        
        for _ in 0..<3 {
            addSquare(on: currentView)
        }
    }
    
}

