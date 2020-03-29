//
//  Count.swift
//  TennisCore
//
//  Created by 守本蒼生 on 2020/03/29.
//  Copyright © 2020 blueforestapps. All rights reserved.
//

import Foundation

class CountMethod {
    let pointList: [String] = ["0", "15", "30", "40", "Ad"]
    var pointCount: [Int] = [0, 0]
    
    func aGetPointAction() {
        if pointCount[0] < 3{
            
            pointCount[0] += 1
        
        } else if pointCount[0] == 3 {
            
            if pointCount[1] < 3 {
                pointCount = [0, 0]
            } else if pointCount[1] == 3 {
                pointCount[0] += 1
            } else {
                pointCount = [3, 3]
            }
            
        } else {
            pointCount = [0, 0]
        }
    }
    
    func bGetPointAction() {
        if pointCount[1] < 3{
            
            pointCount[1] += 1
        
        } else if pointCount[1] == 3 {
            
            if pointCount[0] < 3 {
                pointCount = [0, 0]
            } else if pointCount[0] == 3 {
                pointCount[1] += 1
            } else {
                pointCount = [3, 3]
            }
            
        } else {
            pointCount = [0, 0]
        }
    }
    
}
