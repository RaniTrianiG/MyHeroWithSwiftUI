    //
//  HeroRow.swift
//  MyHeroWithSwiftUI
//
//  Created by Rani Triani Gustia on 09/09/21.
//  Copyright © 2021 Dicoding Indonesia. All rights reserved.
//

import SwiftUI

    struct HeroRow: View {
        var hero: Hero
        
        var body: some View{
            HStack{
                Image(hero.photo)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 0){
                    Text(hero.name)
                        .font(.system(size: 20))
                    Text(hero.description)
                        .font(.system(size: 14))
                        .lineLimit(3)
                }.padding(.leading, 8)
            }.padding(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
        }
        struct HeroRow_Previews: PreviewProvider {
            static var previews: some View {
                HeroRow(hero: heroes[1]).previewLayout(.fixed(width: 400, height: 100))
            }
        }
    }

