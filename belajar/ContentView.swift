//
//  ContentView.swift
//  belajar
//
//  Created by Raka Fajar on 30/05/23.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationView {
            Form{
                // Section Photo Profile
                Section() {
                    NavigationLink(destination: About())
                    {
                        HStack{
                            Image("bg").resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                            
                            // Nama Dan Status
                            VStack(alignment: .leading){
                                Text("Raka Fajar Salinggih").font(.headline)
                                Text("Ios Developer").font(.caption)
                            }
                        }.padding(.top, 10).padding(.bottom,10)
                    }                                    }
                
                // Section Pengaturan Umum
                Section(header: Text("Pengaturan Umum")){
                    
                    NavigationLink(destination: About())
                    {
                        HStack(spacing:20){
                            Image(systemName: "star.fill")
                                .frame(width: 35, height: 35)
                                .background(Color.orange)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            Text("Pesan Berbintang")
                        }
                    }
                    
                    NavigationLink(destination: About())
                    {
                        HStack(spacing:20){
                            Image(systemName: "tv")
                                .frame(width: 35, height: 35)
                                .background(Color.green)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            Text("WhatsApp Web/Desktop")
                        }
                    }
                    
                }
                
                // Pengaturan Akun
                Section(header: Text("Pengaturan Akun")){
                    // Akun
                    NavigationLink(destination: About()) {
                        HStack(spacing:20){
                                Image(systemName: "person")
                                .frame(width: 35, height: 35)
                                .background(Color.blue)
                                .foregroundColor(Color.white)
                                .cornerRadius(10)
                                Text("Akun")
                        }
                    }
                    
                    // Chat
                    NavigationLink(destination: About()) {
                        HStack(spacing:20){
                                Image(systemName: "phone.circle")
                                .frame(width: 35, height: 35)
                                .background(Color.green)
                                .foregroundColor(Color.white)
                                .cornerRadius(10)
                                Text("Chat")
                        }

                    }
                    
                }
                
            }.navigationBarTitle("Setting")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
                ContentView()
    }
}


struct About : View {
    var body: some View {
        Text("Halo View")
    }
}
