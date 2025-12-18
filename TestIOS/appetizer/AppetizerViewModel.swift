
import SwiftUI

final class AppetizerViewModel: ObservableObject {
    
    @Published var appitizer:[AppetizerModel] = []
    @Published var networkErrorMessage : NetworkErrorMessage?
    
    func getAppetizers(){
        NetworkManager.shared.getAppetizers { (result) in
            DispatchQueue.main.async {
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
