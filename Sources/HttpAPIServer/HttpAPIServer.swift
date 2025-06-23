import Foundation
import Hummingbird
import OpenAPIHummingbird
import OpenAPIRuntime

struct Handler: APIProtocol {
    func imageList(_ input: Operations.ImageList.Input) async throws -> Operations.ImageList.Output {
        .ok(.init(body: .json([])))
    }
    
}

@main struct HttpAPIServer {
    static func main() async throws {
        let router = Router()
        let handler = Handler()
        try handler.registerHandlers(on: router, serverURL: URL(string: "/api")!)
        let app = Application(router: router, configuration: .init())
        try await app.run()
    }
}
