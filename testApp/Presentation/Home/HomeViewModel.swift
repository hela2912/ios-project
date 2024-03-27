//
//  HomeViewModel.swift
//  testApp
//
//  Created by Orangeodc9 on 26/3/2024.
//

import Foundation

class HomeViewModel:ObservableObject{
    
    let placeMapper: PlaceMapper
    init(placeMapper: PlaceMapper) {
        self.placeMapper = placeMapper
    }
        @Published var getAllPlacesStates : getAllPlacesStates = .loading
    func getAllPlaces(){
        Task{
            let result = await self.placeMapper.getAllPlaces(url: Consts.URL)
            if case .success( let success) = result {
                DispatchQueue.main.async {
                    self.getAllPlacesStates = .success(success)

                }
            }else  if case .failure(let error) = result {
                DispatchQueue.main.async {
                    self.getAllPlacesStates = .error(error.message)

                }
            }
                
        }
    }
}
