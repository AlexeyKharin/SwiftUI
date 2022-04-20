import SwiftUI

struct ContentView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var selectedView = 1
    @State private var showingDetail = false
    var body: some View {
        TabView(selection: $selectedView) {
            VStack {
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
                    .offset(y:-120)
                
                ZStack(alignment:.center) {
                    
                    RoundedRectangle(cornerRadius: 20.0)
                        .opacity(0.1)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.gray, lineWidth: 1.0))
                        .frame(maxHeight: 75)
                    
                    Divider()
                    
                    TextField("Email or phone", text: $email)
                        .foregroundColor(.black)
                        .font(.headline)
                        .padding(EdgeInsets(top: 10.0, leading: 10.0, bottom: 0.0, trailing: 10.0))
                        .offset(x: 0, y: -20)
                    
                    
                    SecureField("Password", text: $password)
                        .foregroundColor(.black)
                        .font(.headline)
                        .padding(EdgeInsets(top: 0.0, leading: 10.0, bottom: 10.0, trailing: 5.0))
                        .offset(x: 0, y: 20)
                }
                .padding()
                Button("Log in") {
                    showingDetail.toggle()
                }
                    .frame(maxWidth: .infinity, minHeight: 40)
                    .background(Color.blue.opacity(0.7).cornerRadius(10.0))
                    .foregroundColor(.white)
                    .font(.headline)
                    .offset(x: 0, y: -15)
                    .padding()
            } .fullScreenCover(isPresented: $showingDetail, content: {
                ListRow()
            })
            .padding()
            .tabItem {
                Image(systemName: "house.fill")
                Text("Feed")
            } .tag(1)
            
            Text("Second View")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                } .tag(2)
            
            Text("Player")
                .tabItem {
                    Image(systemName: "music.note")
                    Text("second")
                } .tag(3)
            
            Text("Fourth View")
                .tabItem {
                    Image(systemName: "play.rectangle.fill")
                    Text("second")
                } .tag(4)
            
            Text("Fivth View")
                .tabItem {
                    Image(systemName: "music.mic")
                    Text("Recoder")
                } .tag(5)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
