//
//  LocationStore.swift
//  Trecker Multiplatform
//
//  Created by Melville, Aidan on 2021-01-25.
//

import Foundation

class LocationStore: ObservableObject {
    
    var places: [Location]
    
    init() {
    
    // Get pointer to the file
    let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
    
    // Load the contents of the json file
    let data = try! Data(contentsOf: url)
    
    //Convert the data from the json file to an array.
    places = try! JSONDecoder().decode([Location].self, from: data)
    
    // Sort the list of locations alphibeticly by name, in acending order.
        places.sort(by: {
            $0.name < $1.name
        })
    
    }
    
}
