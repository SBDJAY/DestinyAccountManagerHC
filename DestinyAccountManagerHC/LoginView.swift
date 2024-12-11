//DANIEL PIUS - 991675608



import SwiftUI

struct LoginView: View {
    @StateObject private var viewModel = LoginViewModel()
    @State private var isAuthenticated = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Destiny 2 Tracker")
                    .font(.largeTitle)
                    .bold()
                    .padding(.bottom, 40)
                
                TextField("Username", text: $viewModel.username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                    .foregroundColor(.black)
                
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                    .padding(.bottom, 20)
                    .foregroundColor(.black)  
                
                Button(action: {
                    viewModel.login()
                    // Set the isAuthenticated state to true if login is successful
                    if viewModel.isAuthenticated {
                        isAuthenticated = true
                    }
                }) {
                    Text("Login")
                        .bold()
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .padding(.horizontal)
                
                if !viewModel.isAuthenticated && !viewModel.username.isEmpty {
                    Text("Invalid username or password")
                        .foregroundColor(.red)
                        .padding(.top, 10)
                }
                
                // Hint Section
                Text("Hint: Username is FlyingSquirrel, Password is Dan_SB19090409")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .padding(.top, 30)
            }
            .padding()
            .background(Color.black.opacity(0.8))
            .foregroundColor(.white)
            
            // NavigationLink to MainTabView when authenticated
            .background(
                NavigationLink(destination: MainTabView(), isActive: $isAuthenticated) {
                    EmptyView()
                }
            )
        }
    }
}




#Preview{
    LoginView()
}
