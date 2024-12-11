//DANIEL PIUS - 991675608



import Foundation

class LoginViewModel: ObservableObject {
    @Published var isAuthenticated = false
    @Published var username = ""
    @Published var password = ""
    
    private let validUser = User(username: "FlyingSquirrel", password: "Dan_SB19090409")
    
    func login() {
        if username == validUser.username && password == validUser.password {
            isAuthenticated = true
        } else {
            isAuthenticated = false
        }
    }
}
