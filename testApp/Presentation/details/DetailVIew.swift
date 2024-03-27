//
//  DetailVIew.swift
//  testApp
//
//  Created by Orangeodc9 on 27/3/2024.
//

import SwiftUI

struct DetailVIew: View {
    let placedetail : PlaceDetail
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: self.placedetail.image)){
                Image in
                Image.image?.resizable()
            }.frame(width: 300, height: 300)
            
            
            
            
            HStack{
                Image(systemName: "star.fill").resizable()
                    .foregroundColor(.yellow)
                    .frame(width: 30, height: 30)
            }.frame(maxWidth: .infinity, alignment: .trailing)
            
            
            
            
            VStack{
                Text(self.placedetail.title).font(.system(size:24))
                Text(self.placedetail.address).font(.system(size:24))
                Text(self.placedetail.description).font(.system(size:24))

            }.frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()
            HStack{
                
                Button{
                    
                }label: {
                    Text("view wikipedia")                }
            }
            
        }.frame(maxWidth: .infinity, maxHeight:.infinity, alignment: .topTrailing)
        
        
    }
}

struct DetailVIew_Previews: PreviewProvider {
    static var previews: some View {
        DetailVIew()
    }
}
