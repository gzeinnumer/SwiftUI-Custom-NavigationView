//
//  ContentView.swift
//  SwiftUI Custom NavigationView
//
//  Created by M Fadli Zein on 04/03/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View{
    var body : some View{
        NavigationView{
            Content()
                .navigationBarItems(
                    leading: HStack{
                        Button(
                            action:{
                                print("Hello button")
                            }
                        ){
                            Image("youtube")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 90, height: 50)
                        }
                    },
                    trailing: HStack(spacing: 20){
                        Button(action:{print("Hello print")}){
                            Image(systemName: "tray.full")
                                .foregroundColor(Color.secondary)
                        }
                        Button(action:{print("Hello print")}){
                            Image(systemName: "video.fill")
                                .foregroundColor(Color.secondary)
                        }
                        Button(action:{print("Hello print")}){
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(Color.secondary)
                        }
                        Button(action:{print("Hello print")}){
                            Image("me")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 30, height: 30)
                                .clipShape(Circle())
                        }
                    }
                )
                .navigationBarTitle("", displayMode: .inline)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct Content : View{
    var body : some View{
        List{
            Items()
            Items()
            Items()
            Items()
        }
        .listStyle(.plain)
    }
}

struct Items : View{
    var body: some View{
        VStack{
            ZStack(alignment: .bottomTrailing){
                Image("content_2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                Text("20:00")
                    .padding(.all, 5)
                    .foregroundColor(Color.white)
                    .font(.caption)
                    .background(Color.black)
                    .cornerRadius(5)
                    .padding(.trailing, 5)
                    .padding(.bottom, 5)
            }
            HStack(spacing: 20){
                Image("me")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .clipShape(Circle())
                
                VStack(alignment: .leading){
                    Text("Tutorial Swift UI #1")
                        .font(.headline)
                    
                    HStack{
                        Text("Ini adalah deskripsi vide kita - 300x diteonton - 9 jam yang lalu")
                            .font(.caption)
                    }
                }
                
                Spacer()
                Image(systemName: "list.bullet")
            }
        }
    }
}
