//
//  HomeView.swift
//  testApp
//
//  Created by Orangeodc9 on 26/3/2024.
//

import SwiftUI



struct HomeView: View {
    
        let options = ["tunis", "Sousse", "djerba"]
        @State var selectOption = 0
    
    @EnvironmentObject var homeViewModel : HomeViewModel
    
    let places : [PlaceItem] = [PlaceItem (name:"djerba", distance: 20, kinds: ["hey", "hello"])]
    
    
        
        

        var body: some View {
            VStack(spacing:20)
            {
                HStack{
                    Button(action:{},
                           label: {
                        Image(systemName: "gearshape.fill").padding(.trailing, 10)
                    })
                }.frame(maxWidth: .infinity, alignment: .trailing)
                
                
                Text("Recent places \(places.count)").font(.title)

                HStack(){
                    Text("Range")
                    Spacer()
                    Picker(selection : $selectOption, label: Text("")){
                        ForEach(0..<options.count){
                            option in
                            Text(self.options[option]).tag(option)
                        }
                    }
                }
//
                if case let .loading  = self.homeViewModel.getAllPlacesStates
                {
                    HStack {
                        ProgressView().progressViewStyle(.circular)
                        
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    
                        
                        
                }
              
                else if case let .success(places) = self.homeViewModel.getAllPlacesStates
                {
                    ScrollView( showsIndicators : false)
                    {
                        ForEach(places) { item in
                            
                            NavigationLink {
                                Text("")
                                
                            }label: {
                                PlaceItemView(item: item)
                            }.buttonStyle(PlainButtonStyle())
                        }
                    }
                }
                    
                
            }.frame(maxWidth: .infinity, maxHeight:.infinity, alignment: .topTrailing).background(.white).onAppear{ self.homeViewModel.getAllPlaces()
                
            }
                
            
            
        }
 
 }



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
