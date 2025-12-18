
import SwiftUI

final class AppetizerViewModel: ObservableObject {
    
    @Published var appitizer:[AppetizerModel] = []
    @Published var networkErrorMessage : NetworkErrorMessage?
<<<<<<< HEAD
    @Published var isLoading : Bool = false
    func getAppetizers(){
        self.isLoading = true
        NetworkManager.shared.getAppetizers { (result) in
            DispatchQueue.main.async {
                self.isLoading = false
=======
    
    func getAppetizers(){
        NetworkManager.shared.getAppetizers { (result) in
            DispatchQueue.main.async {
>>>>>>> main
                switch result {
                case .success(let appetizer):
                    self.appitizer=appetizer
                case .failure(let error):
                    switch(error){
                    case .invalidData:
                        self.networkErrorMessage = ErrorMessage.invalidData
                    case .invalidURL:
                        self.networkErrorMessage = ErrorMessage.invalidURL
                    case .unableToComplete:
                        self.networkErrorMessage = ErrorMessage.unableToComplete
                    case .invalidResponse:
                        self.networkErrorMessage = ErrorMessage.invalideResponse
                    }
                }
            }
            
        }
    }
}
