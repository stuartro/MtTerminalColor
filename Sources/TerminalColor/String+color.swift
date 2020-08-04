import Foundation

public extension String {
   func bg(_ color: BackgroundColor) -> String {
      return ColorCode.COLOR_ENABLED ? "\(BackgroundColor.colorCodeFor(color))\(self)\(ControlCode.RESETCOLOR)" : self
   }
   
   func fg(_ color: ForegroundColor) -> String {
      return ColorCode.COLOR_ENABLED ? "\(ForegroundColor.colorCodeFor(color))\(self)\(ControlCode.RESETCOLOR)" : self
   }
}
