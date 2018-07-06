//
//  OpenSCADRelay.swift
//  OpenSCADRelay
//
//  Created by Jeremy Bannister on 7/3/18.
//

@_exported import MacOSInteractor
import JBCocoaExtensions

public struct OpenSCADRelay {
  private static let osInteractor = MacOSInteractor(interactionDuration: 0.01)
  public static func sendSourceCode (_ sourceCode: String) {
    osInteractor.openApp("OpenSCAD")
    osInteractor.click(at: 200, 400)
    osInteractor.selectAll()
    osInteractor.press(.delete)
    
    NSPasteboard.copy(sourceCode)
    
    osInteractor.click(at: 200, 400)
    osInteractor.paste()
  }
  public static func preview () {
    osInteractor.press(.f5)
  }
  public static func render () {
    osInteractor.press(.f6)
  }
}
