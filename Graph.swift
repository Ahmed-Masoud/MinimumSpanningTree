//
//  Graph.swift
//  Graphs
//
//  Created by Ahmed masoud on 3/21/16.
//  Copyright © 2016 Ahmed masoud. All rights reserved.
//
import Foundation
class Graph
{
    var numberOfVerticees: Int
    var nodes : [Node] = []
    var connections : [[Int]] = []
    var edges : [Edge] = []
    //   var empty = [999]
    var myNode : Node!
    var foundA = false
    var foundB = false
    
    
    //Initialize graph with the specified numberOfVertices
    init(numberOfVertices: Int,numberOfEdges : Int){
        numberOfVerticees = numberOfVertices
        var temp : [Int] = []
        var i = 0
        //14 is number of edges
        while i<numberOfEdges {
            temp.append(9999)
            i+=1
        }
        i=0
        while i<numberOfEdges {
            self.connections.append(temp)
            i+=1
        }
        
        
        
    }
    
    //add connection between two nodes with to edges of oppesite directions
    func addConnection(nodeA: Node, nodeB: Node, weight: Int){
        let edge : Edge = Edge(nodeA: nodeA, nodeB: nodeB, weight: weight)
        nodeB.addEdge(edge)
        nodeA.addEdge(edge)
        self.edges.append(edge)
        for node in nodes {
            if node.ID == nodeA.ID{
                foundA = true
            }
            if node.ID == nodeB.ID{
                foundB = true
            }
        }
        if foundA == false {
            nodes.append(nodeA)
        }
        if foundB == false {
            nodes.append(nodeB)
        }
        foundA = false
        foundB = false
    }
    
    //Return the amount of vertices in the graph
    func verticesInGraph() -> Int{
        return connections.count
    }
    
    func makeTable(myGraph : Graph) -> Void {
        for node in myGraph.nodes {
            for edge in node.edges {
                myGraph.connections[edge.nodeA.ID][edge.nodeB.ID] = edge.weight
                myGraph.connections[edge.nodeB.ID][edge.nodeA.ID] = edge.weight
            }
        }
        
    }
    
    func getMinimumSpanningTree(myGraph : Graph) -> [Edge]{
        var tempRowIndex : Int = 0
        var coloumnMinimumIndex : Int = 0
        var treeEdges : [Edge] = []
        var i = 0
        var rows : [Int] = []
        rows.append(0)
        let limit = myGraph.numberOfVerticees
        var minimum : Int = 9999
        var test : [String] = []
        var indexPairRow : [Int] = []
        var indexPairCol : [Int] = []
        while test.count<limit - 1 {
            
                for rowIndex in rows {
                    i=0
                    
            while i<limit {
                
                    if (myGraph.connections[rowIndex][i]<minimum) && (!indexPairCol.contains(i)) && (!indexPairRow.contains(i)) {
                        minimum = myGraph.connections[rowIndex][i]
                        coloumnMinimumIndex = i
                        tempRowIndex = rowIndex
                    }
                    i+=1
                }
            }
            minimum = 9999
            test.append("\(tempRowIndex),\(coloumnMinimumIndex)")
            indexPairRow.append(tempRowIndex)
            indexPairCol.append(coloumnMinimumIndex)
            for edge in self.edges {
                if (edge.nodeA.ID == tempRowIndex && edge.nodeB.ID == coloumnMinimumIndex) || (edge.nodeA.ID == coloumnMinimumIndex && edge.nodeB.ID == tempRowIndex)
                {
                    treeEdges.append(edge)
                }
            }
           
            myGraph.connections[tempRowIndex][coloumnMinimumIndex] = 9999
            myGraph.connections[coloumnMinimumIndex][tempRowIndex] = 9999
            rows.append(coloumnMinimumIndex)
            
        }
        return treeEdges
    }
    
    func createCycle(nodeId : Int) -> Bool {
        return false
    }
    
    
    
    
    
    
    
    
    
    
}
