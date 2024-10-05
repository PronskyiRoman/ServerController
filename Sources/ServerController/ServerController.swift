import Vapor

public protocol ServerController {
  func routes() -> [Routes]
}
