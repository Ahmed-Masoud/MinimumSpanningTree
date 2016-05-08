//
//  main.swift
//  MinimumSpanningTree
//
//  Created by Ahmed masoud on 5/3/16.
//  Copyright © 2016 Ahmed masoud. All rights reserved.
//

import Foundation
var globalId = 0

var myGraph: Graph = Graph(numberOfVertices: 9,numberOfEdges: 14)

var nodeA : Node = Node(Name: "A")
var nodeB = Node(Name: "B")
var nodeC = Node(Name: "C")
var nodeD = Node(Name: "D")
var nodeE = Node(Name: "E")
var nodeF = Node(Name: "F")
var nodeG = Node(Name: "G")
var nodeH = Node(Name: "H")
var nodeI = Node(Name: "I")



//Set up connections in our graph

/*myGraph.addConnection(nodeA, nodeB: nodeB, weight: 2)
myGraph.addConnection(nodeA, nodeB: nodeD, weight: 4)
myGraph.addConnection(nodeB, nodeB: nodeC, weight: 4)
myGraph.addConnection(nodeB, nodeB: nodeE, weight: 3)
myGraph.addConnection(nodeB, nodeB: nodeF, weight: 1)
myGraph.addConnection(nodeB, nodeB: nodeD, weight: 4)
myGraph.addConnection(nodeC, nodeB: nodeF, weight: 5)
myGraph.addConnection(nodeD, nodeB: nodeE, weight: 2)
myGraph.addConnection(nodeE, nodeB: nodeF, weight: 5)*/



myGraph.addConnection(nodeA, nodeB: nodeB, weight: 4)
myGraph.addConnection(nodeA, nodeB: nodeH, weight: 8)
myGraph.addConnection(nodeB, nodeB: nodeH, weight: 11)
myGraph.addConnection(nodeB, nodeB: nodeC, weight: 8)
myGraph.addConnection(nodeC, nodeB: nodeI, weight: 2)
myGraph.addConnection(nodeC, nodeB: nodeD, weight: 7)
myGraph.addConnection(nodeC, nodeB: nodeF, weight: 4)
myGraph.addConnection(nodeD, nodeB: nodeE, weight: 9)
myGraph.addConnection(nodeD, nodeB: nodeF, weight: 14)
myGraph.addConnection(nodeE, nodeB: nodeF, weight: 10)
myGraph.addConnection(nodeI, nodeB: nodeH, weight: 7)
myGraph.addConnection(nodeI, nodeB: nodeG, weight: 6)
myGraph.addConnection(nodeG, nodeB: nodeF, weight: 2)
myGraph.addConnection(nodeH, nodeB: nodeG, weight: 1)







myGraph.makeTable(myGraph)
var treeEdges = myGraph.getMinimumSpanningTree(myGraph)

for edge in treeEdges{
    print("Edge \(edge.nodeA.Name),\(edge.nodeB.Name) and its weight is \(edge.weight)")
}







