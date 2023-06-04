//
//  ContentView.swift
//  belajar
//
//  Created by Raka Fajar on 30/05/23.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
<<<<<<< Updated upstream
        ZStack {
            Image("bg").resizable().edgesIgnoringSafeArea(.all)
            VStack(spacing:20){
                Logo()
                FormBox()
            }.padding(.all,20)
        }
=======
        Home()
>>>>>>> Stashed changes
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

<<<<<<< Updated upstream
struct Logo: View {
    var body: some View {
        VStack(spacing:20){
            Image("icon").resizable().frame(
                width: 80, height: 80).foregroundColor(Color.white).padding().cornerRadius(80)
            
            Text("Hello SwiftUI").foregroundColor(Color.black).background(Color.white)
            
        }
=======

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
>>>>>>> Stashed changes
    }
}


<<<<<<< Updated upstream
struct FormBox: View {
    
    
    @State var username: String = ""
    @State var password: String = ""
    var body: some View {
        VStack(alignment:.leading) {
            Text("Username").font(.callout).bold()
            TextField("Username...", text:$username).textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("Password").font(.callout).bold()
            SecureField("Password...", text:$password).textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {
                print("Helo Button")
            }) {
                HStack{
                    Text("Sign In")
                    Spacer()
                }
            }.padding().background(Color.black).cornerRadius(10).foregroundColor(Color.white)

        }.padding(.all, 30).background(Color.orange).cornerRadius(10)
        
        
=======

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
>>>>>>> Stashed changes
    }
}
