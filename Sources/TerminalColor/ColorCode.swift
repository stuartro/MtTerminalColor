import Foundation

/// Define symbols to allow terminal colors (hence TC) to be manipulated
public class ColorCode {
   static public var COLOR_ENABLED = true
   
   ///  =====================================================
   ///  Standard 3/4-bit ANSI colors
   ///  =====================================================
   ///  REGULAR FOREGROUND
   static public var BLACK: String { "\(_4bit_Color(30))" }
   static public var RED: String { "\(_4bit_Color(31))" }
   static public var GREEN: String { "\(_4bit_Color(32))" }
   static public var YELLOW: String { "\(_4bit_Color(33))" }
   static public var BLUE: String { "\(_4bit_Color(34))" }
   static public var PURPLE: String { "\(_4bit_Color(35))" }
   static public var CYAN: String { "\(_4bit_Color(36))" }
   static public var WHITE: String { "\(_4bit_Color(37))" }
   
   ///  BOLD FOREGROUND
   static public var BLACK_BOLD: String { "\(_4bit_BoldColor(30))" }
   static public var RED_BOLD: String { "\(_4bit_BoldColor(31))" }
   static public var GREEN_BOLD: String { "\(_4bit_BoldColor(32))" }
   static public var YELLOW_BOLD: String { "\(_4bit_BoldColor(33))" }
   static public var BLUE_BOLD: String { "\(_4bit_BoldColor(34))" }
   static public var PURPLE_BOLD: String { "\(_4bit_BoldColor(35))" }
   static public var CYAN_BOLD: String { "\(_4bit_BoldColor(36))" }
   static public var WHITE_BOLD: String { "\(_4bit_BoldColor(37))" }
   
   ///  REGULAR BACKGROUND
   static public var BLACK_BG: String { "\(_4bit_Color(40))" }
   static public var RED_BG: String { "\(_4bit_Color(41))" }
   static public var GREEN_BG: String { "\(_4bit_Color(42))" }
   static public var YELLOW_BG: String { "\(_4bit_Color(43))" }
   static public var BLUE_BG: String { "\(_4bit_Color(44))" }
   static public var PURPLE_BG: String { "\(_4bit_Color(45))" }
   static public var CYAN_BG: String { "\(_4bit_Color(46))" }
   static public var WHITE_BG: String { "\(_4bit_Color(47))" }
   
   ///  BRIGHT FOREGROUND
   static public var BLACK_BRIGHT: String { "\(_4bit_Color(90))" }
   static public var RED_BRIGHT: String { "\(_4bit_Color(91))" }
   static public var GREEN_BRIGHT: String { "\(_4bit_Color(92))" }
   static public var YELLOW_BRIGHT: String { "\(_4bit_Color(93))" }
   static public var BLUE_BRIGHT: String { "\(_4bit_Color(94))" }
   static public var PURPLE_BRIGHT: String { "\(_4bit_Color(95))" }
   static public var CYAN_BRIGHT: String { "\(_4bit_Color(96))" }
   static public var WHITE_BRIGHT: String { "\(_4bit_Color(97))" }
   
   ///  BRIGHT BACKGROUND
   static public var BLACK_BRIGHT_BG: String { "\(_4bit_Color(100))" }
   static public var RED_BRIGHT_BG: String { "\(_4bit_Color(101))" }
   static public var GREEN_BRIGHT_BG: String { "\(_4bit_Color(102))" }
   static public var YELLOW_BRIGHT_BG: String { "\(_4bit_Color(103))" }
   static public var BLUE_BRIGHT_BG: String { "\(_4bit_Color(104))" }
   static public var PURPLE_BRIGHT_BG: String { "\(_4bit_Color(105))" }
   static public var CYAN_BRIGHT_BG: String { "\(_4bit_Color(106))" }
   static public var WHITE_BRIGHT_BG: String { "\(_4bit_Color(107))" }
   
   ///  =====================================================
   ///  8-bit ANSI color
   ///  =====================================================
   static public var HOTPINK: String { "\(_8bit_ForegroundColor(205))" }
   static public var HOTPINK_BG: String { "\(_8bit_BackgroundColor(205))" }
   
   ///  =====================================================
   ///  24-bit ANSI color
   ///  =====================================================
   ///  NOTE:
   ///  24-bit colors can be overlaid—that is, specifying a foreground color
   ///  followed by a background color (for example: echo "${BLUE2}${SALMON_BG}Test${RESETCOLOR}")
   ///  works properly.
   static public var SALMON: String { "\(_24bit_ForegroundColor(250, 120, 116))" }
   static public var SALMON_BG: String { "\(_24bit_BackgroundColor(20, 120, 116))" }
   static public var BLUE2: String { "\(_24bit_ForegroundColor(0, 0, 255))" }
   static public var BLUE_BG2: String { "\(_24bit_BackgroundColor(0, 0, 255))" }
   static public var ORANGE: String { "\(_24bit_ForegroundColor(243, 134, 48))" }
   static public var BLUE_HYPERLINK: String { "\(_24bit_ForegroundColor(105, 169, 249))" }
   
   // MARK: PRIVATE FUNCTIONS
   
   /// Returns a 3/4-bit color-code string given color-code value (from 30-107 each).
   /// See https://en.wikipedia.org/wiki/ANSI_escape_code#3/4_bit
   /// and x-devonthink-item://B8DB1DE9-FEA7-494C-8CF6-4121ABD07E38
   private static func  _4bit_Color(_ colorCode: Int) -> String {
      "\(ControlCode.ESC)[0;\(colorCode)m"
   }
   
   /// Returns a 3/4-bit *bold* color-code string given color-code value (from 30-107 each).
   /// See https://en.wikipedia.org/wiki/ANSI_escape_code#3/4_bit
   /// and x-devonthink-item://B8DB1DE9-FEA7-494C-8CF6-4121ABD07E38
   private static func  _4bit_BoldColor(_ colorCode: Int) -> String {
      "\(ControlCode.ESC)[1;\(colorCode)m"
   }
   
   ///  Returns an 8-bit *foreground* color-code string given color-code value (from 0-255).
   ///  See https://en.wikipedia.org/wiki/ANSI_escape_code#8-bit
   ///  and x-devonthink-item://B8DB1DE9-FEA7-494C-8CF6-4121ABD07E38
   private static func  _8bit_ForegroundColor(_ colorCode: Int) -> String {
      "\(ControlCode.ESC)[38;5;\(colorCode)m"
   }
   
   ///  Returns an 8-bit *background* color-code string given color-code value (from 0-255).
   ///  See https://en.wikipedia.org/wiki/ANSI_escape_code#8-bit
   ///  and x-devonthink-item://B8DB1DE9-FEA7-494C-8CF6-4121ABD07E38
   private static func  _8bit_BackgroundColor(_ colorCode: Int) -> String {
      "\(ControlCode.ESC)[48;5;\(colorCode)m"
   }
   
   ///  Returns a 24-bit *foreground* color-code string given R, G, and B values (from 0-255 each).
   ///  See https://en.wikipedia.org/wiki/ANSI_escape_code#24-bit
   ///  and x-devonthink-item://B8DB1DE9-FEA7-494C-8CF6-4121ABD07E38
   private static func  _24bit_ForegroundColor(_ red: Int, _ green: Int, _ blue: Int) -> String {
      "\(ControlCode.ESC)[38;2;\(red);\(green);\(blue)m"
   }
   
   ///  Returns a 24-bit *background* color-code string given R, G, and B values (from 0-255 each).
   ///  See https://en.wikipedia.org/wiki/ANSI_escape_code#24-bit
   ///  and x-devonthink-item://B8DB1DE9-FEA7-494C-8CF6-4121ABD07E38
   private static func  _24bit_BackgroundColor(_ red: Int, _ green: Int, _ blue: Int) -> String {
      "\(ControlCode.ESC)[48;2;\(red);\(green);\(blue)m"
   }
   

}


