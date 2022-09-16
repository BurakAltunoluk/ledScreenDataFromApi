//
//  ViewController.swift
//  ledScreenDataFromApi
//
//  Created by Burak Altunoluk on 15/09/2022.
//

import UIKit

final class MainVC: UIViewController {
    private var row1 = 0
    private var pixel = UIView()
    private var mainView = UIView()
    private var pixelNo = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        pixel.isUserInteractionEnabled = true
        pixelDraw()
    }
    
    private func pixelOfLed(pX:Int, pY:Int, WH:Int) {
        pixel = UIView(frame: CGRect(x: pX, y: pY, width: WH, height: WH))
        pixel.backgroundColor = .blue
        pixel.tag = pixelNo
        pixelNo += 1
        view.addSubview(pixel)
        let gesture = UITapGestureRecognizer(target: self, action: #selector(tapped))
        pixel.addGestureRecognizer(gesture)
    }
    
    private func pixelDraw() {
        var arrayBay = [Int]()
        let screenWith = Int(UIScreen.main.bounds.height) / 15
        print(screenWith)
        
        for _ in 1...screenWith {
            row1 += 11
            arrayBay.append(row1)
            print(arrayBay)
        }
        
        for bay in arrayBay {
            for i in 1...24 {
            pixelOfLed(pX: i * 15, pY: bay, WH: 5)
                
            }
        }
        
    }
    
    @objc func tapped() {
        print(pixel.tag)
        }
        
    }


