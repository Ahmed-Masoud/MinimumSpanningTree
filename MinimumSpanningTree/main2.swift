//
//  main.swift
//  Graphs
//
//  Created by Ahmed masoud on 3/21/16.
//  Copyright © 2016 Ahmed masoud. All rights reserved.
//

import Foundation

var myGraph: Graph = Graph(numberOfVertices: 12)

var Root : Node = Node(Name: "Root", ID: 0)
var nodeA = Node(Name: "A",ID: 1)
var nodeB = Node(Name: "B",ID: 2)
var nodeC = Node(Name: "C",ID: 3)
var Sink = Node(Name: "Sink",ID: 4)

//Set up connections in our graph
myGraph.addConnection(Root, nodeB: nodeA, transferfunction: "X+Y")
myGraph.addConnection(nodeA, nodeB: nodeB, transferfunction: "X+2Y")
myGraph.addConnection(Root, nodeB: nodeB, transferfunction: "X-2Y")
myGraph.addConnection(Root, nodeB: nodeC, transferfunction: "X-3Y")
myGraph.addConnection(nodeC, nodeB: Sink, transferfunction: "X-3Y")


var connected = myGraph.getVerticesConnectedTo(Root)
print("Nodes Connected To Vertex : \(Root.Name)")
for node in connected.0{
    print("Name : \(node.Name) and it's transfer function is : \(node.edges[0].TransferFnction) and in")
    
}
for node in connected.1{
    print("Name : \(node.Name) and it's transfer function is : \(node.edges[0].TransferFnction) and out")
    
}
