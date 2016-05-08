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
    var TransferFnction : String!
    
    
    init(nodeA : Node,nodeB : Node,TransferFunction : String,direction : Int){
        self.direction = direction
        self.nodeA = nodeA
        self.nodeB = nodeB
        self.TransferFnction = TransferFunction
    }
}
