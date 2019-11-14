//
//  TMDBDataSource.swift
//  Lec9
//  retrofit
//  Created by hackeru on 14/11/2019.
//  Copyright © 2019 hackeru. All rights reserved.
//

import UIKit

class TMDBDataSource{
   
    ///discover/movie?api_key=e898f9a386bfdb67610421b879360e02&sort_by=popularity.desc
    let endPoint: EndPoint
    var params: [String: Any] //ex: ["sort_by":"popularity.desc"]
    //todo: init!
    init(endPoint: EndPoint, params: [String: Any] = [:]){
        self.endPoint = endPoint
        self.params = params
        
        let defaultParams = endPoint.defaultParams.map{"\($0)=\($1)"}.joined(separator: "&")
        var otherParams = params.map{"\($0)=\($1)"}.joined(separator: "&")
        
        
        let address = endPoint.path + "?" + defaultParams + "&" + otherParams
        
        let url = URL(string: address)!
        
        
        //	.
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    enum EndPoint{
           case discoverMovies
           case discoverTV
           
           //computed property for the url:
           var path:String{
               switch self {
               case .discoverMovies:
                   return base + "/discover/movie"
               case .discoverTV:
                   return base + "/discover/tv"
               }
           }
           
           var defaultParams:[String: Any]{
               return ["api_key":"e898f9a386bfdb67610421b879360e02"]
           }
           //computed property: (THE ONLY PROPERTY THAT ENUMS MAY HAVE)
           private var base: String {
               return "https://api.themoviedb.org/3"
           }
       }
}

let url = URL(string: "abc.com") //nil


//Failable init
class Circle {
    var radius:Double
    
    init?(radius: Double){
        if radius >= 0{
            self.radius = radius
        }else{
            return nil
        }
    }
}
