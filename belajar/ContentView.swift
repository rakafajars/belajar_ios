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
            Image("bg").resizable().edgesIgnoringSafeArea(.all)
            VStack(spacing:20){
                Logo()
                FormBox()
            }.padding(.all,20)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
                ContentView()
    }
}

struct Logo: View {
    var body: some View {
        VStack(spacing:20){
            Image("icon").resizable().frame(
                width: 80, height: 80).foregroundColor(Color.white).padding().cornerRadius(80)
            
            Text("Hello SwiftUI").foregroundColor(Color.black).background(Color.white)
            
        }
    }
}


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
        
        
    }
}
