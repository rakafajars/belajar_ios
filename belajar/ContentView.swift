//
//  ContentView.swift
//  belajar
//
//  Created by Raka Fajar on 30/05/23.
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


struct Home: View {
    var body: some View {
        NavigationView {
            Konten().navigationBarItems(
                    leading: HStack{
                        Button(action:{
                            print("hello")
                        }) {
                            Image("yt").resizable().renderingMode(.original).frame(width: 40, height: 40)
                            
                        }
                    },
                    trailing: HStack {
                        Button(action: {print("helo")}) {
                            Image(systemName: "tray.full").foregroundColor(Color.secondary)
                        }
                        
                        Button(action: {print("helo")}) {
                            Image(systemName: "video.fill").foregroundColor(Color.secondary)
                            
                        }
                        
                        Button(action: {print("helo")}) {
                            Image(systemName: "magnifyingglass").foregroundColor(Color.secondary)
                            
                        }
                        
                        Button(action: {print("helo")}) {
                            Image("bg").renderingMode(.original).resizable().frame(width: 45,height: 45).clipShape(Circle())
                            
                        }
                        
                    }
            ).navigationBarTitle("", displayMode: .inline)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}



struct Konten : View {
    var body: some View {
        List{
            
            // konten 1
            VStack {
                ZStack(alignment: .bottomTrailing) {
                    Image("content1").resizable().aspectRatio(contentMode: ContentMode.fill)
                    Text("10:00")
                        .padding(.all, 5)
                        .foregroundColor(Color.white)
                        .font(.caption)
                        .background(Color.black)
                        .cornerRadius(5)
                        .padding(.trailing, 10)
                        .padding(.bottom, 5)
                }
                
                HStack(spacing:20) {
                    Image("bg")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading) {
                        Text("Belajar SWIFTUI Bagian Pertama")
                            .font(.headline)
                        HStack {
                            Text("Noiz Chanel - 300x kamu pasti bisa").font(.caption)
                        }
                    }
                    Spacer()
                    Image(systemName: "list.bullet")

                }
            }
            
            
            VStack {
                ZStack(alignment: .bottomTrailing) {
                    Image("content1").resizable().aspectRatio(contentMode: ContentMode.fill)
                    Text("10:00")
                        .padding(.all, 5)
                        .foregroundColor(Color.white)
                        .font(.caption)
                        .background(Color.black)
                        .cornerRadius(5)
                        .padding(.trailing, 10)
                        .padding(.bottom, 5)
                }
                
                HStack(spacing:20) {
                    Image("bg")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading) {
                        Text("Belajar SWIFTUI Bagian Pertama")
                            .font(.headline)
                        HStack {
                            Text("Noiz Chanel - 300x kamu pasti bisa").font(.caption)
                        }
                    }
                    Spacer()
                    Image(systemName: "list.bullet")

                }
            }
        }
    }
}
