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
    var ID : Int!
    var edges : [Edge] = []
    init(Name : String,ID : Int){
        self.Name = Name
        self.ID = ID
    }
    func addEdge(NewEdge : Edge ) -> Void {
        edges.append(NewEdge)
    }
}