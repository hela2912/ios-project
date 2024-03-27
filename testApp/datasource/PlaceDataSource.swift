//
//  PlaceDataSource.swift
//  testApp
//
//  Created by Orangeodc9 on 26/3/2024.
//

import Foundation

class PlaceDataSource{
    
    func getAllPlaces(url:String) async throws -> Any? {
        guard let url = URL(string:url) else {return nil}
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"


        let (data,response) = try await URLSession.shared.data(for: request)
        if let response = (response as? HTTPURLResponse)
            
        {
            if response.statusCode == 200 {
                return try JSONDecoder().decode([PlaceItemResponse].self, from: data)
                
            }else {
                return nil
            }
            
        }
            else{
                return nil

            }
        }
    }

