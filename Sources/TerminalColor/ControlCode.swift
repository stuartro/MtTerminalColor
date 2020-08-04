import Foundation

public enum ControlCode {
   public static let ESC = "\u{001B}"
   public static let RESETCOLOR = "\(ESC)[0;00m"
}
