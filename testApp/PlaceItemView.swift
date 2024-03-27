//
//  PlaceItemView.swift
//  testApp
//
//  Created by Orangeodc9 on 26/3/2024.
//

import SwiftUI

struct PlaceItemView: View {
    let item : PlaceItem
    
    var body: some View {
        
        VStack{
            
            VStack(spacing:10){
                HStack{
                    Text(item.name).font(.title2)
                    Spacer()
                    VStack{
                        Button(action:{},
                               label: {
                            Image(systemName: "star.fill").padding().foregroundColor(.yellow)
                                .cornerRadius(10)
                        })
                        
                    }
                  
                }
                
                HStack{
                    ForEach(self.item.kinds, id:\.self){
                        itemobj in
                        Text(itemobj).font(.system(size: 10)).background(.gray).cornerRadius(5).padding(.leading, 2)
                            .opacity(0.7)
                    }
                    Spacer()
                    Text("\(String(format:"%.1fm",item.distance))").font(.title2)
                    
                }
            }
            Divider()
        }.padding(.horizontal,32)
        
        
        
        
        
        
    }
}

struct PlaceItemView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceItemView(item: PlaceItem(name:"tunis", distance:30, kinds:[
        "hello"]))
    }
}
