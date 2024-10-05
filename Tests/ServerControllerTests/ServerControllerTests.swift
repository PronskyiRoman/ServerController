import Testing
import Vapor

@testable import ServerController

@Suite("Test ServerController")
struct TestServerController {
  private final class ServerControllerTests: ServerController {
    func routes() -> [Vapor.Routes] {
      []
    }
  }

  @Test
  func emptyRoutes() async throws {
    #expect(ServerControllerTests().routes().isEmpty)
  }
}
