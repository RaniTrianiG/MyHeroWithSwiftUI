//
//  HeroList.swift
//  MyHeroWithSwiftUI
//
//  Created by Rani Triani Gustia on 09/09/21.
//  Copyright © 2021 Dicoding Indonesia. All rights reserved.
//

import SwiftUI

struct HeroList: View {
    var body: some View{
        List(heroes){
            hero in
            ZStack{
                HeroRow(hero: hero)
                NavigationLink(destination: HeroDetail(hero: hero)){
                    EmptyView()
                }
            }
        }.navigationBarTitle(Text("Pahlawan Indonesia"), displayMode: .inline)
    }
}
