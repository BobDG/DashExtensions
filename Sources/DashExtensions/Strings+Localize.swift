//
//  Strings+Localize.swift
//

import Foundation

extension String {
    
    func localized(bundle: Bundle = .main, tableName: String = "Localizable", comment: String = "") -> String {
        return NSLocalizedString(self, tableName: tableName, value: "**\(self)**", comment: comment)
    }
    
    func localizedWithFormat(_ args: CVarArg...) -> String {
        let format = self.localized()
        return String(format: format, locale: Locale.current, arguments: args)
    }    
}
