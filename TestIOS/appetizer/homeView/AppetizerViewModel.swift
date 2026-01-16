
import SwiftUI

final class AppetizerViewModel: ObservableObject {
    
    @Published var appitizer:[AppetizerModel] = []
    @Published var alertItem : AlertItem?
    @Published var isLoading : Bool = false
    
    func getAppetizers(){
        NetworkManager.shared.getAppetizers { (result) in
            DispatchQueue.main.async {
                switch result {
                case .success(let appetizer):
                    self.appitizer=appetizer
                case .failure(let error):
                    switch(error){
                    case .invalidData:
                        self.alertItem = AlertContext.invalidData
                    case .invalidURL:
                        self.alertItem = AlertContext.invalidURL
                    case .unableToComplete:
                        self.alertItem = AlertContext.unableToComplete
                    case .invalidResponse:
                        self.alertItem = AlertContext.invalideResponse
                    }
                }
            }
            
        }
    }
}
