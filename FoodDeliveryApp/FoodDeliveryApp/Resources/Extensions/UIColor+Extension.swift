import UIKit

extension UIColor {
    // Инициализация цвета из HEX-строки
    convenience init(hex: String) {
        var hexString = hex.trimmingCharacters(in: .whitespacesAndNewlines)

        // Удаляем символы # в начале строки, если они есть
        if hexString.hasPrefix("#") {
            hexString.removeFirst()
        }

        // Проверяем длину строки
        if hexString.count == 6 {
            // Разделяем строку на компоненты цвета (R, G, B)
            let scanner = Scanner(string: hexString)
            var rgbValue: UInt64 = 0
            scanner.scanHexInt64(&rgbValue)

            let red = CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0
            let green = CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0
            let blue = CGFloat(rgbValue & 0x0000FF) / 255.0

            self.init(red: red, green: green, blue: blue, alpha: 1.0)
        } else {
            // Если строка невалидна, используем белый цвет по умолчанию
            self.init(white: 1.0, alpha: 1.0)
        }
    }
}
