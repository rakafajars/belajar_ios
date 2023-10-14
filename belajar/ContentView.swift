//
//  ContentView.swift
//  belajar
//
//  Created by Raka Fajar on 30/05/23.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        ZStack {
            TabView {
                Home().tabItem{
                    Image(systemName: "house.fill")
                    Text("Beranda")
                }
                Home().tabItem{
                    Image(systemName: "paperplane.fill")
                    Text("Explorasi")
                }
                
                Home().tabItem{
                    Image(systemName: "tray.fill")
                    Text("Subscription")
                }
                Home().tabItem{
                    Image(systemName: "envelope.fill")
                    Text("Kotak Masuk")
                }
                Home().tabItem{
                    Image(systemName: "play.rectangle.fill")
                    Text("Koleksi")
                }
            }.accentColor(.red)
        }
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
            CellKonten(imageKontent: "content1",
                       profileKontent: "bg",
                       judul: "Belajar SwiftUI", deskripsi:
                        "Belajar Adalah Kekuatan",
                       durasi: "10:00")
            
            CellKonten(imageKontent: "content2",
                       profileKontent: "bg",
                       judul: "Belajar Matematika", deskripsi:
                        "Belajar Adalah Hebat Kamu Bisa",
                       durasi: "15:00")
            
            CellKonten(imageKontent: "content1",
                       profileKontent: "bg",
                       judul: "Belajar SwiftUI", deskripsi:
                        "Belajar Adalah Kekuatan",
                       durasi: "10:00")
            
            CellKonten(imageKontent: "content2",
                       profileKontent: "bg",
                       judul: "Belajar Matematika", deskripsi:
                        "Belajar Adalah Hebat Kamu Bisa",
                       durasi: "15:00")

        }
    }
}



// komponen untuk cell
struct CellKonten : View {
    // parameter variabel
    var imageKontent: String
    var profileKontent: String
    var judul: String
    var deskripsi: String
    var durasi: String
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(imageKontent).resizable().aspectRatio(contentMode: ContentMode.fill)
                Text(durasi)
                    .padding(.all, 5)
                    .foregroundColor(Color.white)
                    .font(.caption)
                    .background(Color.black)
                    .cornerRadius(5)
                    .padding(.trailing, 10)
                    .padding(.bottom, 5)
            }
            
            HStack(spacing:20) {
                Image(profileKontent)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text(judul)
                        .font(.headline)
                    HStack {
                        Text(deskripsi).font(.caption)
                    }
                }
                Spacer()
                Image(systemName: "list.bullet")
                
            }
        }
    }
}
