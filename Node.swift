//
//  Node.swift
//  Graphs
//
//  Created by Ahmed masoud on 3/21/16.
//  Copyright © 2016 Ahmed masoud. All rights reserved.
//

import Foundation

class Node {
    var Name : String!
    var edges : [Edge] = []
    var ID : Int!
    init(Name : String){
        self.Name = Name
        ID = globalId
        globalId += 1 
    }
    func addEdge(NewEdge : Edge ) -> Void {
        edges.append(NewEdge)
    }
}