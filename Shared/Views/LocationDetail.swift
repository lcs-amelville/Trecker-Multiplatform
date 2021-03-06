//
//  LocationDetail.swift
//  Trecker Multiplatform
//
//  Created by Melville, Aidan on 2021-01-25.
//

import SwiftUI

struct LocationDetail: View {
    
    // the location to show details about
    let location: Location
    
    var body: some View {
        ScrollView {
            Image(location.heroPicture)
                .resizable()
                .scaledToFit()
            
            HStack {
            
            Text(location.country)
                .font(.title)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.leading)
                .padding(.bottom)
            
            Spacer()
                
            }
            .padding(.horizontal)
            
            Text(location.description)
                .padding(.horizontal)
            
            HStack {
                
                Text("Did you know?")
                    .font(.title3)
                    .bold()
                    .padding(.vertical)
                
                Spacer()
                
            }
            .padding(.horizontal)
            
            
            // Conditionaly show the travil advisory.
            
            if !location.advisory.isEmpty {
                
                Text(location.more)
                    .padding([.horizontal,])
                
                // Show Something
                HStack {
                    
                    Text("Advisory")
                        .font(.title3)
                        .bold()
                        .padding(.vertical)
                    
                    Spacer()
                    
                }
                .padding(.horizontal)
                
                Text(location.advisory)
                    .padding([.horizontal, .bottom])
                
            }else {
                Text(location.more)
                    .padding([.horizontal, .bottom])
            }
            
        }
        .navigationTitle(location.name)
    }
}

struct LocationDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LocationDetail(location: testStore.places[1])
        }
    }
}
