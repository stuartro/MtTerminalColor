import Foundation

/// Define symbols to allow terminal colors (hence TC) to be manipulated
public enum ForegroundColor {
   case black_bold
   case black_bright
   case black
   case blue_bold
   case blue_bright
   case blue_hyperlink
   case blue
   case blue2
   case cyan_bold
   case cyan_bright
   case cyan
   case green_bold
   case green_bright
   case green
   case hotpink
   case orange
   case purple_bold
   case purple_bright
   case purple
   case red_bold
   case red_bright
   case red
   case salmon
   case white_bold
   case white_bright
   case white
   case yellow_bold
   case yellow_bright
   case yellow
   
   public static func colorCodeFor(_ color: ForegroundColor) -> String {
      switch color {
      case .black_bold:       return ColorCode.BLACK_BOLD
      case .black_bright:     return ColorCode.BLACK_BRIGHT
      case .black:            return ColorCode.BLACK
      case .blue_bold:        return ColorCode.BLUE_BOLD
      case .blue_bright:      return ColorCode.BLUE_BRIGHT
      case .blue_hyperlink:   return ColorCode.BLUE_HYPERLINK
      case .blue:             return ColorCode.BLUE
      case .blue2:            return ColorCode.BLUE2
      case .cyan_bold:        return ColorCode.CYAN_BOLD
      case .cyan_bright:      return ColorCode.CYAN_BRIGHT
      case .cyan:             return ColorCode.CYAN
      case .green_bold:       return ColorCode.GREEN_BOLD
      case .green_bright:     return ColorCode.GREEN_BRIGHT
      case .green:            return ColorCode.GREEN
      case .hotpink:          return ColorCode.HOTPINK
      case .orange:           return ColorCode.ORANGE
      case .purple_bold:      return ColorCode.PURPLE_BOLD
      case .purple_bright:    return ColorCode.PURPLE_BRIGHT
      case .purple:           return ColorCode.PURPLE
      case .red_bold:         return ColorCode.RED_BOLD
      case .red_bright:       return ColorCode.RED_BRIGHT
      case .red:              return ColorCode.RED
      case .salmon:           return ColorCode.SALMON
      case .white_bold:       return ColorCode.WHITE_BOLD
      case .white_bright:     return ColorCode.WHITE_BRIGHT
      case .white:            return ColorCode.WHITE
      case .yellow_bold:      return ColorCode.YELLOW_BOLD
      case .yellow_bright:    return ColorCode.YELLOW_BRIGHT
      case .yellow:           return ColorCode.YELLOW
      }
   }
}
