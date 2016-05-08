//
//  Edge.swift
//  Graphs
//
//  Created by Ahmed masoud on 3/23/16.
//  Copyright © 2016 Ahmed masoud. All rights reserved.
//

import Foundation
class Edge {
    var direction : Int!
    var nodeA : Node!
    var nodeB : Node!
    var weight : Int!
    
    
    init(nodeA : Node,nodeB : Node,weight : Int){
        self.nodeA = nodeA
        self.nodeB = nodeB
        self.weight = weight
    }
}
