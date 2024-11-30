import Foundation

/// Define symbols to allow terminal colors (hence TC) to be manipulated
public enum BackgroundColor {
   case black
   case black_bright
   case blue
   case blue2
   case blue_bright
   case cyan
   case cyan_bright
   case green
   case green_bright
   case hotpink
   case purple
   case purple_bright
   case red
   case red_bright
   case salmon
   case white
   case white_bright
   case yellow
   case yellow_bright

   
   public static func colorCodeFor(_ color: BackgroundColor) -> String {
      switch color {
      case .black:          return ColorCode.BLACK_BG
      case .black_bright:   return ColorCode.BLACK_BRIGHT_BG
      case .blue:           return ColorCode.BLUE_BG
      case .blue2:          return ColorCode.BLUE_BG2
      case .blue_bright:    return ColorCode.BLUE_BRIGHT_BG
      case .cyan:           return ColorCode.CYAN_BG
      case .cyan_bright:    return ColorCode.CYAN_BRIGHT_BG
      case .green:          return ColorCode.GREEN_BG
      case .green_bright:   return ColorCode.GREEN_BRIGHT_BG
      case .hotpink:        return ColorCode.HOTPINK_BG
      case .purple:         return ColorCode.PURPLE_BG
      case .purple_bright:  return ColorCode.PURPLE_BRIGHT_BG
      case .red:            return ColorCode.RED_BG
      case .red_bright:     return ColorCode.RED_BRIGHT_BG
      case .salmon:         return ColorCode.SALMON_BG
      case .white:          return ColorCode.WHITE_BG
      case .white_bright:   return ColorCode.WHITE_BRIGHT_BG
      case .yellow:         return ColorCode.YELLOW_BG
      case .yellow_bright:  return ColorCode.YELLOW_BRIGHT_BG
      }
   }
}
