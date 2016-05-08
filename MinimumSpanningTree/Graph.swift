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
    var n: Int
    var adj: [[Node]] = []
    var empty = [Node(Name: "",ID: -1)]
    var myNode : Node!
    
    //Initialize graph with the specified numberOfVertices
    init(numberOfVertices: Int){
        n = numberOfVertices
        for _ in 0...n
        {
            adj.append(empty)
        }
    }
    
    //add connection between two nodes with to edges of oppesite directions
    func addConnection(nodeA: Node, nodeB: Node, transferfunction: String){
        let edge1 : Edge = Edge(nodeA: nodeA, nodeB: nodeB, TransferFunction: transferfunction, direction: 1)
        nodeB.addEdge(edge1)
        let edge2 : Edge = Edge(nodeA: nodeA, nodeB: nodeB, TransferFunction: transferfunction, direction: 0)
        nodeA.addEdge(edge2)
        if adj[nodeA.ID][0].ID == -1 {
            adj[nodeA.ID][0] = nodeB
        }
        else{
            adj[nodeA.ID].append(nodeB)
        }
        //var bibo = adj
    }
    
    //Return the amount of vertices in the graph
    func verticesInGraph() -> Int{
        return adj.count
    }

    //Return 2 arrays containing the vertices connected to a vertex entered as a parameter
    func getVerticesConnectedTo(v:Node) -> ([Node],[Node]){
        var nodesConnectedIn : [Node] = []
        var nodesConnectedOut : [Node] = []
        var edgesToVertex : [Edge] = []
        for i in 0...v.edges.count-1{
            edgesToVertex.append(v.edges[i])
        }
        for i in 0...edgesToVertex.count-1{
            if edgesToVertex[i].nodeA.Name == v.Name{
                if edgesToVertex[i].direction == 0 {
                    nodesConnectedOut.append(edgesToVertex[i].nodeB)
                }else{
                    nodesConnectedIn.append(edgesToVertex[i].nodeB)
                }
            }else{
                if edgesToVertex[i].direction == 1 {
                    nodesConnectedIn.append(edgesToVertex[i].nodeA)
                }else{
                    nodesConnectedOut.append(edgesToVertex[i].nodeA)
                }
            }
        }
        //nodes connected in means nodes with edges directed into the desired node
        //nodes connected out means nodes directed from the desired node
        return (nodesConnectedIn,nodesConnectedOut)
    }
    
    //get forward paths isa xP
    func getForwardPaths(Root : Node , var Path : [String]) -> [String] {
        var pathsOutOfRoot = getVerticesConnectedTo(Root)
        for i in 0...pathsOutOfRoot.1.count-1{
            
            
        }
    }
}
