import UIKit

extension UIFont {
    enum Roboto {
        case black, blackItalic, bold, boldItalic, italic, light, lightItalic,
             medium, mediumItalic, regular, thin, thinItalic

        func size(_ size: CGFloat) -> UIFont {
            let fontName: String
            switch self {
            case .black: fontName = "Roboto-Black"
            case .blackItalic: fontName = "Roboto-BlackItalic"
            case .bold: fontName = "Roboto-Bold"
            case .boldItalic: fontName = "Roboto-BoldItalic"
            case .italic: fontName = "Roboto-Italic"
            case .light: fontName = "Roboto-Light"
            case .lightItalic: fontName = "Roboto-LightItalic"
            case .medium: fontName = "Roboto-Medium"
            case .mediumItalic: fontName = "Roboto-MediumItalic"
            case .regular: fontName = "Roboto-Regular"
            case .thin: fontName = "Roboto-Thin"
            case .thinItalic: fontName = "Roboto-ThinItalic"
            }
            return UIFont(name: fontName, size: size)!
        }
    }
}
